# SIR_questions
SIR NONMEM questions

This is a small example repository to show our understanding about how SIR is performed within NONMEM. 

- NONMEM model:
  +   The example NONMEM model script is `./model/pk/106.ctl` with its output in `./model/pk/106`
 
- NONMEM data: 
  +   `./data/derived/analysis3.csv`
 
- Scripts: 
  +   `./script/model-management.R`: NONMEM model fitting script using [bbr](https://metrumresearchgroup.github.io/bbr/articles/getting-started.html)
  +   `./script/sir-sampling.R`: SIR sampling script
  +   `./script/sir-resampling.R`: SIR resampling script (two resampling methods)
 
- SIR output: 
  +   `./data/sir_output/sir-sample-106.csv`: SIR samples
  +   `./data/sir_output/sir-resample-106-1.csv`: SIR resample using resampling method 1
  +   `./data/sir_output/sir-resample-106-2.csv`: SIR resample using resampling method 2 (Unsure if correct)
