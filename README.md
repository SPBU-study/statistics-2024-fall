# statistics-2024-fall

### Steps to reproduce baseline ([Link](baseline_original.ipynb) to original notebook. Also available [here](https://www.kaggle.com/code/hotessy/capri-exponential-model-using-pymc3))

1. Install pymc in conda environment following by [this instruction](https://www.pymc.io/projects/docs/en/stable/installation.html).

2. Run `conda install -y cufflinks-py scikit-learn` in created pymc environment.

3. Achieve data by running `download_data.sh` script.

4. Run cells of [baseline notebook](baseline_reproduced.ipynb) one by one in VSCode.

### Results

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
