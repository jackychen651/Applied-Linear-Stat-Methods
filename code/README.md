# File Hierarchy

AppliedLinearStatMethodsHW1XiaoChen
│  main.pdf
│
│
├─code
│      LinearRegression.r
│      README.md
│      SuccessiveRegression.r
│
├─datasets
       prostate.csv

# How To Run The Code?

Please open the entire folder `AppliedLinearStatMethodsHW1XiaoChen` (with Visual Studio Code preferably). If you only open the r code, you should change the dataset directory manually to run the code. Then you should run this in your shell:


```
cd AppliedLinearStatMethodsHW1XiaoChen
Rscript ./code/LinearRegression.r
Rscript ./code/SuccessiveRegression.r
```

# Results
For `LinearRegression.r`, you should get:
```
 (Intercept)       lcavol      lweight          age         lbph          svi
 0.669336698  0.587021826  0.454467424 -0.019637176  0.107054031  0.766157326
         lcp      gleason        pgg45
-0.105474263  0.045141598  0.004525231
```

For `SuccessiveRegression.r`, you should get:
```
[1]  0.669336698  0.587021826  0.454467424 -0.019637176  0.107054031
[6]  0.766157326 -0.105474263  0.045141598  0.004525231
```