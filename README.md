# statistics-2024-fall

## It is better to run notebooks by yourself than view in GitHub because of interactive graphics in some cells.

### Steps to reproduce baseline ([There](baseline_original.ipynb) is an original notebook. Achieved from [kaggle.com](https://www.kaggle.com/code/hotessy/capri-exponential-model-using-pymc3))
 
1. Install pymc in conda environment following by [this instruction](https://www.pymc.io/projects/docs/en/stable/installation.html)

2. Run `conda install -y cufflinks-py scikit-learn` in created pymc environment

3. Achieve data by running `download_data.sh` script

4. Run cells of [baseline notebook](baseline_reproduced.ipynb) one by one in VSCode.

### Steps to reproduce our improvements

1. Run [filter_trash notebook](filter_trash.ipynb) and it will create a filtered data

2. Run cells of [improved notebook](baseline_improved.ipynb) one by one in VSCode

### Results

- This repo with instruction to reproduce baseline & our improvements of it
- Table with metrics for US country. `Type = `
  - `Original` means that numbers are from original notebook and was calculated on first 50 days only
  - `Reproduced` means that original notebook was refreshed by new syntax libraries and new data (500 days)
  - `Improved` means that refreshed notebook was improved by filtered data 

| Model        | Type | R2   | MSE  |
| -------------  | ------------- | ------------- | ------------- |
| Unpooled     | Original   | 0.93    | 0.58   | 
| Unpooled     | Reproduced  | 0.67    | 1.51   | 
| Unpooled     | Improved  | 0.67    | 1.51   | 
| Pooled       | Original   | 0.93    | 0.22   |
| Pooled       | Reproduced  | 0.8928    | 0.2023    |
| Pooled       | Improved | 0.8924 | 0.2030 |
| Hierarchical | Original   | 0.93    | 0.22   |
| Hierarchical | Reproduced  | 0.8926 | 0.2027 |
| Hierarchical | Improved  | 0.8925 | 0.2028 |

- Nice pictures of models
  - [Unpooled](unpooled_model.png.png)
  - [Pooled](pooled_model.png.png)
  - [Hierarchical](hierarchical_model.png.png) — careful!

### Analyze

- Baseline is deprecated because it used only 50 first days (since original notebook is 5 years old) and with all data (almost 500 days) old assumptions are not enough
- So we can use not just an exponential model but something else (maybe mixing of first 50 days and remaining — motivation is that first days people were panicked and after that all goes in another way)
- For different countries we get exclusive pictures of confirmed cases (but common pattern is great growth in the beginning and slightly growth in all remaining time)
- ~~Our hierarchical models is strange fitted (maybe there are some bug but we spent several hours and found no one)~~ Hierarchical model is almost the same as Pooled model 
- Our improved models has no improvement in metrics compared to reproduced. Our guess is that confirmed cases is too much for every country so few cases with negative diff are ignorable for the models.
- Overall, Covid-19 is an interesting thing. On the one hand, there are much cases when different events were happened like lockdown, vaccination and others in different countries and states. On the other hand, real data distribution is too hard to predict it well so we can improve it infinitely by adding some info in model and trying make some assumptions

### Additional

- Nikita's notes [here](Nikita's-notes.md)
- Leonya's notes [here](leonya_notes.md)
