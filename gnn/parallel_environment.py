import numpy as np
import random as rnd
import multiprocessing
from gnn.graph_data import GraphData
import os
import sys
import time

class GameState:
    __slots__ = ["graph_data", "value", "action"]
    def __init__(self, graph_data_raw):
        self.graph_data = GraphData(graph_data_raw)
        self.value = None
        self.action = None

class ProblemList:
    def __init__(self, directory):
        self.prob_list = os.listdir(directory)
        self.directory = directory
        self.index = 0
        self.epoch = 0

    def get_problem(self):

        if self.index == 0: rnd.shuffle(self.prob_list)
        problem = self.prob_list[self.index]

        self.index += 1
        if self.index == len(self.prob_list):
            self.index = 0
            self.epoch += 1

        return os.path.join(self.directory, problem)

class ProblemStats:
    def __init__(self):
        self.stat = dict()
        self.solved_problems = 0
        self.unsolved_problems = 0
        self.success_rate = 0

    def add(self, problem, success):
        self.success_rate = np.interp(0.01, [0,1], [self.success_rate, success])
        if problem not in self.stat:
            if not success: self.unsolved_problems += 1
            stat = [0,0]
            self.stat[problem] = stat
        else:
            stat = self.stat[problem]
            if stat[1] == 0 and success:
                self.unsolved_problems -= 1
                self.solved_problems += 1

        if success and stat[1] == 0:
            print("New problem solved: {}".format(problem))
            sys.stdout.flush()
        stat[success] += 1

def freeze(pipe, dummy):
    import fcoplib as cop
    cop.start(pipe.recv())
    pipe.send((False, cop.graph_indices()))
    pipe.recv()

class RepeatingEnv:

    def __init__(self, prob_list, stats, max_steps = 200):
        self.prob_list = prob_list
        self.stats = stats
        self.max_steps = max_steps

    @staticmethod
    def worker_f(pipe, max_steps):
        import fcoplib as cop
        while True:
            recv = pipe.recv()
            if recv is None: return
            cop.start(recv)
            for _ in range(max_steps):
                pipe.send((False, cop.graph_indices()))
                recv = pipe.recv()
                if recv is None: return
                solved, an = cop.action_fl(recv)
                if an == 0 or solved != 0: break
            pipe.send((True, int(solved > 0)))

    def launch_worker(self):
        self.pipe, self.pipe_worker = multiprocessing.Pipe()
        self.worker = multiprocessing.Process(target=RepeatingEnv.worker_f,
                                              args=(self.pipe_worker, self.max_steps))
        self.worker.start()

    def start(self):
        self.launch_worker()
        res = self.new_problem()
        return res

    def response_to_state(self, response):
        self.cur_state = GameState(response)
        return self.cur_state

    def new_problem(self):
        self.cur_problem = self.prob_list.get_problem()
        self.pipe.send(self.cur_problem)
        return self.response_to_state(self.pipe.recv()[1])

    def stop(self):
        self.pipe.send(None)
        self.worker.terminate()

    def step(self, action):
        self.pipe.send(action)
        self.cur_state.action = action

    def get_state(self):
        healthy = self.pipe.poll(2)
        if not healthy:
            sys.stdout.flush()
            self.pipe.send(None)
            self.worker.terminate()
            print("Worker is frozen -> kill")
            self.pipe.close()
            self.launch_worker()
            finish, response = True, 0
        else:
            finish, response = self.pipe.recv()

        if finish:
            self.cur_state.value = response
            self.stats.add(self.cur_problem, response)
            return self.new_problem()
        else:
            self.cur_state = response
            return self.response_to_state(response)

class ParallelEnvironment:
    def __init__(self, num_envs, problem_dir, **kwargs):
        self.prob_list = ProblemList(problem_dir)
        self.stats = ProblemStats()
        self.envs = [
            RepeatingEnv(self.prob_list, self.stats, **kwargs)
            for _ in range(num_envs)
        ]

    def start(self):
        import atexit
        atexit.register(self.stop)

        states = [
            env.start()
            for env in self.envs
        ]
        return states

    def stop(self):
        for env in self.envs: env.stop()

    def step(self, actions):
        for env, action in zip(self.envs, actions): env.step(action)
        return [ env.get_state() for env in self.envs ]

if __name__ == "__main__":
    env = ParallelEnvironment(50, "tst-safe")
    env.start()
    env.stop()

