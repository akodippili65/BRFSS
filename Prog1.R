library(SASxport)
library(dplyr)

lookout <- lookup.xport("LLCP2018.XPT")
variables <- lookout$LLCP2018$name

df <- read.xport("LLCP2018.XPT")

Alabama <- df %>% filter(X.STATE == 1)

table(Alabama$GENHLTH)
colSums(is.na(Alabama))
