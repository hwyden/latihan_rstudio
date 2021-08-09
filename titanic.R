dfTitanic <- data.frame(Titanic)
dfTitanic

library(data.table)
data_titanic <- data.table(dfTitanic)
head(data_titanic)
total_passanger = data_titanic[, sum(Freq)]
total_passanger

freq_surv = data_titanic[, list(n=sum(Freq)), by='Survived']
freq_surv

freq_surv[, percent := n / sum(n)]
freq_surv