### Beta Diversity::: mvabund

source("Functions.R")

# Q1: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Dads?
otu.mvabund1 <- mvabund(otu1[,which(apply(otu.all*7000,2,max)>=5)]*7000)
mod1 <- manyglm(otu.mvabund1 ~ env1$Group, family='negative_binomial')
  plot(mod1)
mod.out1 <- anova(mod1, p.uni = "adjusted")
  write.csv(mod.out1$table,"../mvabund_results/Q1.mvabund.table.csv")
  write.csv(mod.out1$uni.test,"../mvabund_results/Q1.mvabund.uni.test.csv")
  write.csv(mod.out1$uni.p,"../mvabund_results/Q1.mvabund.uni.p.csv")

# Q2: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Mums?
  
# Q3: Is the MB sig dif in Pups with dif cross foster models?
  
# Q4: Is the MB sig dif in Pups with dif fmt models?
  
# Q5: Is the MB sig dif in hz/Sgp130FC Pups?
  
# Q6: Is the MB sig dif in all Pups with CFD Mums?

# Q7: Is the MB sig dif in all Pups with HFD Mums?