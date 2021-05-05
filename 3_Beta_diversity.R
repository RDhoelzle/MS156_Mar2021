### Beta Diversity

source("Functions.R")


# Q1: Is the MB* sig. diff. between WT female (TM-1) and Sgp130 female (TM-2) on CFD/HFD ?
adonis(sqrt(otu1) ~ GroupLabel, data=env1, method='euc')
  rda1 <- rda(sqrt(otu1) ~ env1$GroupLabel)
    custom.plot.rda(ord = rda1, group = factor(env1$GroupLabel), 
                    title = "Q1", plottype = "n", sd.val = 10, scaling.val = 3)

# Q2: Is the MB* sig. diff. between Sgp130 female (TM-2) and Sgp130 male (TM-2) on CFD/HFD ?
adonis(sqrt(otu2) ~ GroupLabel, data=env2, method='euc')
  rda2 <- rda(sqrt(otu2) ~ env2$GroupLabel)
    custom.plot.rda(ord = rda2, group = factor(env2$GroupLabel), 
                    title = "Q2", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q3: Is the MB* sig. diff. between WT female (TM-1) and Het.* Sgp130 pups (TM-1) on CFD/HFD ?
adonis(sqrt(otu3) ~ GroupLabel, data=env3, method='euc')
  rda3 <- rda(sqrt(otu3) ~ env3$GroupLabel)
    custom.plot.rda(ord = rda3, group = factor(env3$GroupLabel), 
                    title = "Q3", plottype = "n", sd.val = 10, scaling.val = 3)

# Q4: Is the MB* sig. diff. between Sgp130 female (TM-2)and Homo. Sgp130 pups (TM-2) on CFD/HFD ?
adonis(sqrt(otu4) ~ GroupLabel, data=env4, method='euc')
  rda4 <- rda(sqrt(otu4) ~ env4$GroupLabel)
    custom.plot.rda(ord = rda4, group = factor(env4$GroupLabel), 
                    title = "Q4", plottype = "n", sd.val = 10, scaling.val = 3)

# Q5: Is the MB* sig. diff. between Het. Sgp130 pups (TM-1) and Homo. Sgp130 pups (TM-2) on CFD/HFD ?
adonis(sqrt(otu5) ~ GroupLabel, data=env5, method='euc')
  rda5 <- rda(sqrt(otu5) ~ env5$GroupLabel)
      col.list <- c("darkgrey","orange","black","red")
      palette(col.list)
      custom.plot.rda(ord = rda5, group = factor(env5$GroupLabel), 
                    title = "Q5", plottype = "n", sd.val = 20, scaling.val = 3)

# Q6: Is the MB* sig. diff. between WT pups (Historical data) and Het. Sgp130 pups (TM-1) on CFD/HFD ?
adonis(sqrt(otu6) ~ GroupLabel, data=env6, method='euc')
  rda6 <- rda(sqrt(otu6) ~ env6$GroupLabel)
    col.list <- c("darkgrey","orange","black","red")
    palette(col.list)
    custom.plot.rda(ord = rda6, group = factor(env6$GroupLabel), 
                    title = "Q6", plottype = "n", sd.val = 10, scaling.val = 3)
    
    ## Q5 + Q6: all control intervention pups
    adonis(sqrt(otu.pup.cont) ~ GroupLabel, data=env.pup.cont, method='euc')
    rda.pup.cont <- rda(sqrt(otu.pup.cont) ~ env.pup.cont$GroupLabel)
    col.list <- c("darkgrey","orange","white","yellow","black","red")
    palette(col.list)
    custom.plot.rda(ord = rda.pup.cont, group = factor(env.pup.cont$GroupLabel), 
                    title = "Control Pups", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q7: Is the MB* sig. diff. between WT pups (Historical data) and Homo. Sgp130 pups (TM-2) on CFD/HFD ?
adonis(sqrt(otu7) ~ GroupLabel, data=env7, method='euc')
  rda7 <- rda(sqrt(otu7) ~ env7$GroupLabel)
    custom.plot.rda(ord = rda7, group = factor(env7$GroupLabel), 
                    title = "Q7", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q8: Is the MB* sig. diff. between WT Mum on CFD/HFD at E0 ?
  
# Q9: Is the MB* sig. diff. between WT Mum on CFD/HFD at E17 ?
  
# Q10: Is the MB* sig. diff. between WT pups on CFD/HFD at PND3 ?
  
# Q11: Is the MB* sig. diff. between WT pups on CFD/HFD at PND7 ?
  
# Q12: Is the MB sig dif in Pups with dif cross foster models?
  
# Q13: Is the MB sig dif in Pups with dif fmt models?
  