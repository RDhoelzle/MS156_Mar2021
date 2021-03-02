### Weighted UniFrac

# Q1: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Dads?
adonis((w_unifrac1) ~ Group, data=env1, method='euc')
pcoa.uf1 <- pcoa(w_unifrac1)
custom.plot.II.pcoa(ord = pcoa.uf1, 
                    colours = factor(env1$Group), 
                    size = 1.4, 
                    ellipses = env1$Group, 
                    plottype = "n", 
                    title = "", legend.position = "bottomright")

# Q2: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Mums?

# Q3: Is the MB sig dif in Pups with dif cross foster models?

# Q4: Is the MB sig dif in Pups with dif fmt models?

# Q5: Is the MB sig dif in hz/Sgp130FC Pups?

# Q6: Is the MB sig dif in all Pups with CFD Mums?

# Q7: Is the MB sig dif in all Pups with HFD Mums?