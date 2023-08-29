# CUMULATIVE SUM CHARTS FOR PERFORMANCE AND QUALITY CONTROL

## LOAD LIBRARIES

```{r}
library(qcc)
library(readxl)
```

## IMPORT DATA

```{r}
df <- read_excel(file.choose())
attach(df)
View(df)
```

## EXPLORATORY ANALYSIS

```{r}
summary(df)
boxplot(Test ~ Batch)
plot(Batch, Test, cex=0.7)
lines(tapply(Test,Batch,mean))
```

## CUMULATIVE SUM ANALYSIS

```{r}
test <- qcc.groups(Test, Batch)
qcc(test[1:10, ], type="xbar")
```

```{r}
qcc(test[1:10,], type="xbar", newdata=test[11:20,])
```
