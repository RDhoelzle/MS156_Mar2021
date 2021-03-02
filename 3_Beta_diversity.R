### Beta Diversity

source("Functions.R")


# Q1: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Dads?
adonis(sqrt(otu1) ~ Group, data=env1, method='euc')
  rda1 <- rda(sqrt(otu1) ~ env1$Group)
    custom.plot.rda(ord = rda1, group = factor(env1$Group), 
                    title = "Q1", plottype = "n", sd.val = 10, scaling.val = 3)

# Q2: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Mums?
adonis(sqrt(otu2) ~ Group, data=env2, method='euc')
  rda2 <- rda(sqrt(otu2) ~ env2$Group)
    custom.plot.rda(ord = rda2, group = factor(env2$Group), 
                    title = "Q2", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q3: Is the MB sig dif in Pups with dif cross foster models?
adonis(sqrt(otu3) ~ Group, data=env3, method='euc')
  rda3 <- rda(sqrt(otu3) ~ env3$Group)
    custom.plot.rda(ord = rda3, group = factor(env3$Group), 
                    title = "Q3", plottype = "n", sd.val = 10, scaling.val = 3)

adonis(sqrt(otu4) ~ Group, data=env4, method='euc')
  rda4 <- rda(sqrt(otu4) ~ env4$Group)
    custom.plot.rda(ord = rda4, group = factor(env4$Group), 
                    title = "Q4", plottype = "n", sd.val = 10, scaling.val = 3)

# Q5: Is the MB sig dif in hz/Sgp130FC Pups?
adonis(sqrt(otu5) ~ Group, data=env5, method='euc')
  rda5 <- rda(sqrt(otu5) ~ env5$Group)
    custom.plot.rda(ord = rda5, group = factor(env5$Group), 
                    title = "Q5", plottype = "n", sd.val = 10, scaling.val = 3)

# Q6: Is the MB sig dif in all Pups with CFD Mums?
adonis(sqrt(otu6) ~ Group, data=env6, method='euc')
  rda6 <- rda(sqrt(otu6) ~ env6$Group)
    custom.plot.rda(ord = rda6, group = factor(env6$Group), 
                    title = "Q6", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q7: Is the MB sig dif in all Pups with HFD Mums?
adonis(sqrt(otu7) ~ Group, data=env7, method='euc')
  rda7 <- rda(sqrt(otu7) ~ env7$Group)
    custom.plot.rda(ord = rda7, group = factor(env7$Group), 
                    title = "Q7", plottype = "n", sd.val = 10, scaling.val = 3)
    