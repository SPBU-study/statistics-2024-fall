Results:
- This repo with instruction to reproduce baseline & our improvements
- Baseline is deprecated because it used only 50 first days (since original notebook is 5 years old) and with all data (almost 500 days) old assumptions are not enough
- Table with metrics for US country (`Ours = No` means that numbers are from original notebook and was calculated on first 50 days only)
| Model        | Ours | R2   | MSE  |
| -------------  | ------------- | ------------- | ------------- |
| Unpooled     | No   | 0.93    | 0.58   | 
| Unpooled     | Yes  | 0.67    | 1.51   | 
| Pooled       | No   | 0.93    | 0.22   |
| Pooled       | Yes  | 0.89    | 0.2    |
| Hierarchical | No   | 0.93    | 0.22   |
| Hierarchical | Yes  | -133.14 | 253.12 |


Work that I done:
1. Found [dataset](https://www.kaggle.com/datasets/sudalairajkumar/novel-corona-virus-2019-dataset) about covid-19 (before that I viewed 10+ other datasets on kaggle.com)
2. Found [baseline](https://www.kaggle.com/code/hotessy/capri-exponential-model-using-pymc3) notebook that try to do thing with this dataset using PyMC
3. Reproduce baseline in another notebook
   - Set up an environment
   - Rewrite deprecated things in notebook (it used pymc3 so it was not a trivial work)
   - Debug code & think about how to improve baseline
4. Analyze results of reproduction
5. Write [README.md](README.md)
