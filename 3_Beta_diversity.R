### Beta Diversity

source("Functions.R")


# Q1: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Dads?
adonis(otu1 ~ Group, data=env1, method='euc')
  pcoa1 <- pcoa(otu1)
    custom.plot.II.pcoa(ord = pcoa1, colours = factor(env1$Group), ellipses = factor(env1$Group),
                    size = 3, title = "Q1", plottype = "n", legend.position = "bottomleft")
#adonis(sqrt(otu1) ~ Group, data=env1, method='euc')
#  rda1 <- rda(sqrt(otu1) ~ env1$Group)
#    custom.plot.rda(ord = rda1, group = factor(env1$Group), 
#                    title = "Q1", plottype = "n", sd.val = 10, scaling.val = 3)


    
# Q2: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Mums?
#adonis(otu2 ~ Group, data=env2, method='euc')
#  pcoa2 <- pcoa(otu2)
#    custom.plot.II.pcoa(ord = pcoa2, colours = factor(env2$Group), ellipses = factor(env2$Group),
#                        size = 3, title = "Q2", plottype = "n", legend.position = "bottomleft")
adonis(sqrt(otu2) ~ Group, data=env2, method='euc')
  rda2 <- rda(sqrt(otu2) ~ env2$Group)
    custom.plot.rda(ord = rda2, group = factor(env2$Group), 
                    title = "Q2", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q3: Is the MB sig dif in Pups with dif cross foster models?
#adonis(otu3 ~ Group, data=env3, method='euc')
#  pcoa3 <- pcoa(otu3)
#    custom.plot.II.pcoa(ord = pcoa3, colours = factor(env3$Group), ellipses = factor(env3$Group),
#                        size = 3, title = "Q3", plottype = "n", legend.position = "bottomleft")
adonis(sqrt(otu3) ~ Group, data=env3, method='euc')
  rda3 <- rda(sqrt(otu3) ~ env3$Group)
    custom.plot.rda(ord = rda3, group = factor(env3$Group), 
                    title = "Q3", plottype = "n", sd.val = 10, scaling.val = 3)

# Q4: Is the MB sig dif in Pups with dif fmt models?
#adonis(otu4 ~ Group, data=env4, method='euc')
#  pcoa4 <- pcoa(otu4)
#    custom.plot.II.pcoa(ord = pcoa4, colours = factor(env4$Group), ellipses = factor(env4$Group),
#                        size = 3, title = "Q4", plottype = "n", legend.position = "bottomleft")
adonis(sqrt(otu4) ~ Group, data=env4, method='euc')
  rda4 <- rda(sqrt(otu4) ~ env4$Group)
    custom.plot.rda(ord = rda4, group = factor(env4$Group), 
                    title = "Q4", plottype = "n", sd.val = 10, scaling.val = 3)

# Q5: Is the MB sig dif in hz/Sgp130FC Pups?
#adonis(otu5 ~ Group, data=env5, method='euc')
#  pcoa5 <- pcoa(otu5)
#    custom.plot.II.pcoa(ord = pcoa5, colours = factor(env5$Group), ellipses = factor(env5$Group),
#                        size = 3, title = "Q5", plottype = "n", legend.position = "bottomleft")
adonis(sqrt(otu5) ~ Group, data=env5, method='euc')
  rda5 <- rda(sqrt(otu5) ~ env5$Group)
    custom.plot.rda(ord = rda5, group = factor(env5$Group), 
                    title = "Q5", plottype = "n", sd.val = 10, scaling.val = 3)

# Q6: Is the MB sig dif in all Pups with CFD Mums?
#adonis(otu6 ~ Group, data=env6, method='euc')
#  pcoa6 <- pcoa(otu6)
#    custom.plot.II.pcoa(ord = pcoa6, colours = factor(env6$Group), ellipses = factor(env6$Group),
#                        size = 3, title = "Q6", plottype = "n", legend.position = "bottomleft")
adonis(sqrt(otu6) ~ Group, data=env6, method='euc')
  rda6 <- rda(sqrt(otu6) ~ env6$Group)
    custom.plot.rda(ord = rda6, group = factor(env6$Group), 
                    title = "Q6", plottype = "n", sd.val = 10, scaling.val = 3)
    
# Q7: Is the MB sig dif in all Pups with HFD Mums?
#adonis(otu7 ~ Group, data=env7, method='euc')
#  pcoa7 <- pcoa(otu7)
#    custom.plot.II.pcoa(ord = pcoa7, colours = factor(env7$Group), ellipses = factor(env7$Group),
#                        size = 3, title = "Q7", plottype = "n", legend.position = "bottomleft")
adonis(sqrt(otu7) ~ Group, data=env7, method='euc')
  rda7 <- rda(sqrt(otu7) ~ env7$Group)
    custom.plot.rda(ord = rda7, group = factor(env7$Group), 
                    title = "Q7", plottype = "n", sd.val = 10, scaling.val = 3)
    