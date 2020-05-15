Codebase for plCoP, a Prolog Technology Reinforcement Learning Prover

Article: [https://arxiv.org/abs/2004.06997](https://arxiv.org/abs/2004.06997)

# Download project:

```
git clone --recurse-submodules git@github.com:zsoltzombori/plcop.git
```

This project makes use of two external repositories:

- PySwip for Python-Prolog interaction: https://github.com/yuce/pyswip
- Hashtbl for prolog hash tables: https://github.com/gergo-/hashtbl

# To install pyswip:

```
cd pyswip
pip install -e .
cd ..
```

# The xgb foreign interface is provided in

```
foreign/xgb.so
```

However, depending on your system configuration, you may need to recompile it. See

```
foreign/INSTALL1
```

for an example how to do it. For the recompilation, make sure that the xgboost c library is in /tmp/:

```
cp foreign/libxgboost.so /tmp/
```

If you need to obtain another version of xgboost, this link can help:

https://xgboost.readthedocs.io/en/latest/build.html#building-the-shared-library

# Usage

To run Monte Carlo Tree Search on a single tptp problem:

```
python montecarlo.py ini/plcop0.ini --problem_file <path_to_file>
```

To run a few iterations of learning on a directory of problems, see e.g.:

```
bash baseline.sh
```