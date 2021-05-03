import re
import os
import matplotlib.pyplot as plt


# ent_pattern = "Average entropy: (\d+\.\d+)"
ent_pattern = "Average entropy: (\d+\.\d+) \[(\d+)\]"
ent_patternN = "Average normalised entropy: (\d+\.\d+) \[(\d+)\]"
succ_pattern = "SUCCESS"

problem_dirs = (
    "theorems/m2np",
    "theorems/mptp2078b",
    )

########## changing gnn entropy coeff greatly affects performance #########
experiments1 = (
    "plcop_paramodulation",
    "gnn_paramodulation",
    "gnn_paramodulation_0.1ent",
    "gnn_paramodulation_0.2ent",
    "gnn_paramodulation_0.3ent",
    "gnn_paramodulation_0.5ent",
    "gnn_paramodulation_0.6ent",
    "gnn_paramodulation_0.7ent_10layers",
    "gnn_paramodulation_0.8ent",
    "gnn_paramodulation_1.0ent",
    "gnn_paramodulation_2.0ent",
    "gnn_paramodulation_swap",
    )
stages1 = (1,2,4,6,8,10)
out1 = "/local1/zombori/plcop_archive/20210414_entropy_comparision/out"
problem_dirs1 = ("theorems/m2np", )

############### increasing xgboost temperature hurts performance #########
experiments2 = {
    "plcop_paramodulation",
    "plcop_paramodulation_0.01temp",
    "plcop_paramodulation_0.05temp",
    "plcop_paramodulation_0.1temp",
}
stages2 = (0,1,2,3,4,5,6,7,8,9,10)
out2 = "/local1/zombori/plcop_archive/20210419_xgboost_temperature/out"
problem_dirs2 = ("theorems/m2np", )

######## using dummy, fixed probabilities with given entropy #####3
experiments3 = {
    "gnn_paramodulation",
    "gnn_paramodulation_fixedpolicy1.2",
    "gnn_paramodulation_fixedpolicy1.4",
}
stages3 = (0,1,2,3,4,5,6,7,8,9,10)
out3 = "out"
problem_dirs3 = ("theorems/m2np", )

######## after training on m2k, how does it perform on mptp2078b: entcoeff=0.7 is still the best #####
experiments4 = (
    "plcop_paramodulation",
    "gnn_paramodulation",
    "gnn_paramodulation_0.1ent",
    "gnn_paramodulation_0.2ent",
    "gnn_paramodulation_0.3ent",
    "gnn_paramodulation_0.5ent",
    "gnn_paramodulation_0.6ent",
    "gnn_paramodulation_0.7ent",
    "gnn_paramodulation_0.8ent",
    "gnn_paramodulation_1.0ent",
    "gnn_paramodulation_2.0ent",
    )
stages4 = (1, )
out4 = "/local1/zombori/plcop_archive/20210415_entropy_comparision_on_mptp2078b/out"
problem_dirs4 = ("theorems/mptp2078b", )

######## measuring normalized entropy on the xgboost model #####3
experiments5 = {
    "plcop_paramodulation",
    # "gnn_paramodulation_fixed0.7",
    "gnn_paramodulation_0.7ent",
}
stages5 = (0,1,2,3,4,5,6,7,8,9,10)
out5 = "out"
problem_dirs5 = ("theorems/m2np", )


#experiments, stages, out, problem_dirs = experiments1, stages1, out1, problem_dirs1
#experiments, stages, out, problem_dirs = experiments2, stages2, out2, problem_dirs2
#experiments, stages, out, problem_dirs = experiments3, stages3, out3, problem_dirs3
#experiments, stages, out, problem_dirs = experiments4, stages4, out4, problem_dirs4
experiments, stages, out, problem_dirs = experiments5, stages5, out5, problem_dirs5

experiment_cnt = 0


tabledata = []
for problem_dir in problem_dirs:
    for experiment in experiments:
        print("\n\n-----------EXPERIMENT {}-----------\n".format(experiment))
            
        line = ""
        if experiment.startswith("gnn"):
            line = "GNN & "
        else:
            line = "XGB & "
        ent_matches = re.findall("_(\d+\.\d+)ent", experiment)
        if len(ent_matches) > 0:
            line += ent_matches[0]
        line += " & "

        for stage in stages:
            directory = "{}/{}/stage{}/{}".format(out, experiment, stage, problem_dir)

            if not os.path.isdir(directory):
                continue

            cnt_succ = 0
            entsum_succ = 0
            occ_succ = 0
            cnt_fail = 0
            entsum_fail = 0
            occ_fail = 0

            cnt_succN = 0
            entsum_succN = 0
            occ_succN = 0
            cnt_failN = 0
            entsum_failN = 0
            occ_failN = 0

            for filename in os.listdir(directory):
                if filename.endswith('.out'):
                    fullname = os.path.join(directory, filename)
                    with open(fullname) as f:
                        text = f.read()
                    ent_matches = re.findall(ent_pattern, text)
                    ent_matchesN = re.findall(ent_patternN, text)
                    success = re.search(succ_pattern, text)
                    if len(ent_matches) > 0:
                        if success:
                            entsum_succ += float(ent_matches[0][0])
                            cnt_succ += 1
                            occ_succ += int(ent_matches[0][1])
                        else:
                            entsum_fail += float(ent_matches[0][0])
                            cnt_fail += 1
                            occ_fail += int(ent_matches[0][1])
                    if len(ent_matchesN) > 0:
                        if success:
                            entsum_succN += float(ent_matchesN[0][0])
                            cnt_succN += 1
                            occ_succN += int(ent_matchesN[0][1])
                        else:
                            entsum_failN += float(ent_matchesN[0][0])
                            cnt_failN += 1
                            occ_failN += int(ent_matchesN[0][1])

            print("\n", directory)
            if cnt_succN > 0:
                print("   Average entropyN succ: {} ({})".format(entsum_succN / cnt_succN, cnt_succN))
            if cnt_failN > 0:
                print("   Average entropyN fail: {} ({})".format(entsum_failN / cnt_failN, cnt_failN))
            cntN = cnt_succN+cnt_failN
            if cntN > 0:
                avg_entN = (entsum_succN+entsum_failN) / cntN
                avg_entN = round(avg_entN, 2)
                avg_evalN = int((occ_succN+occ_failN) / cntN)
                print("   Average entropyN:      {} ({})".format(avg_entN, cntN))
                print("   Average evaluationsN:  {} ({})".format(avg_evalN, cntN))

            if cnt_succ > 0:
                print("   Average entropy succ: {} ({})".format(entsum_succ / cnt_succ, cnt_succ))
            if cnt_fail > 0:
                print("   Average entropy fail: {} ({})".format(entsum_fail / cnt_fail, cnt_fail))
            cnt = cnt_succ+cnt_fail
            if cnt > 0:
                avg_ent = (entsum_succ+entsum_fail) / cnt
                avg_ent = round(avg_ent, 2)
                avg_eval = int((occ_succ+occ_fail) / cnt)
                print("   Average entropy:      {} ({})".format(avg_ent, cnt))
                print("   Average evaluations:  {} ({})".format(avg_eval, cnt))

                line += str(avg_ent) + " & "
                # line += str(avg_eval) + " & "
            else:
                line += " & "
            line += str(cnt_succ)
            if stage == stages[-1]:
                line += "\\\\"
            else:
                line += " & "
        tabledata.append(line)


for line in tabledata:
    print(line)

    

    
if experiment_cnt== 1:
    entcoeffs = (0, 0.1, 0.2, 0.3, 0.5, 0.6, 0.7, 0.8, 1.0, 2.0)
    solved = (1017, 1046, 1099, 1162, 1183, 1190, 1220, 1137, 1164, 1077)
    entropies = (0.32, 0.38, 0.46, 0.78, 1.06, 1.19, 1.2, 1.3, 1.35, 1.5)
    xgb_solved = 1163

    fig, ax1 = plt.subplots()

    color = 'tab:red'
    ax1.set_xlabel('Entropy regularization coefficient')
    ax1.set_ylabel('Problems solved', color=color)
    ax1.plot(entcoeffs, solved, color=color)
    ax1.tick_params(axis='y', labelcolor=color)

    ax2 = ax1.twinx()  # instantiate a second axes that shares the same x-axis
    color = 'tab:blue'
    ax2.set_ylabel('Entropy', color=color)  # we already handled the x-label with ax1
    ax2.plot(entcoeffs, entropies, color=color)
    ax2.tick_params(axis='y', labelcolor=color)
    fig.tight_layout()  # otherwise the right y-label is slightly clipped


    # plt.plot(entcoeffs, solved)
    # plt.plot(entcoeffs, entropies)
    plt.savefig("m2k_solved.png")
