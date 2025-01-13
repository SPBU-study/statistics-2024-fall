## My name is Leonya Petrov and this is my part of work

1. I have observed COVID-2019 datasets, made primary preprocessing and struggled with a problem of negative deltas -- when **cumulative** summs do **decrease** in some points. Preprocessing and small internet-research can be found in [filter_trash.ipynb](filter_trash.ipynb).

2. Used 'Confirmed COIVD cases' dataset to fit Gaussian Process model for daily new cases: [notebook](gp_model.ipynb).
Tried different data setups:
	- As is
	- With cutting off first N days (N = 100)
