# install.packages("faraway") 
# unindent the first line if you have not installed faraway
library(faraway)
# if you cannot run the code here, you should open the entire folder, not the "code" folder, or you can simply change the directory below
datadir <- ".\\datasets\\prostate.csv"
prostate_data <- read.csv(datadir)
model_lm <- lm(lpsa ~ ., data = prostate_data)
coefficients(model_lm)
