### Alpha Diversity

source("Functions.R")

# Q1: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Dads?
anova(lm(Sobs ~ factor(Group), data=env1))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env1)
anova(lm(Chao1 ~ factor(Group), data=env1))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env1)
anova(lm(Shan ~ factor(Group), data=env1))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env1)
anova(lm(PD ~ factor(Group), data=env1))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env1)
# all no sig dif
summary(aov(env1[,25] ~ env1$Group))
cld(lsmeans(aov(env1[,25] ~ Group, data= env1), ~ Group, Letters = letters, adjust = "tukey"))


# Q2: Is the MB sig dif CFD/HFD Sgp130FC/Mixed Mums?
anova(lm(Sobs ~ factor(Group), data=env2))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env2)
anova(lm(Chao1 ~ factor(Group), data=env2))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env2)
anova(lm(Shan ~ factor(Group), data=env2))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env2)
anova(lm(PD ~ factor(Group), data=env2))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env2)
# all metrics ***
summary(aov(env2[,25] ~ env2$Group))
cld(lsmeans(aov(env2[,25] ~ Group, data= env2), ~ Group, Letters = letters, adjust = "tukey"))

# Q3: Is the MB sig dif in Pups with dif cross foster models?
anova(lm(Sobs ~ factor(Group), data=env3))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env3)
anova(lm(Chao1 ~ factor(Group), data=env3))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env3)
anova(lm(Shan ~ factor(Group), data=env3))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env3)
anova(lm(PD ~ factor(Group), data=env3))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env3)
# all metrics ***
summary(aov(env3[,25] ~ env3$Group))
cld(lsmeans(aov(env3[,25] ~ Group, data= env3), ~ Group, Letters = letters, adjust = "tukey"))

# Q4: Is the MB sig dif in Pups with dif fmt models?
anova(lm(Sobs ~ factor(Group), data=env4))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env4)
anova(lm(Chao1 ~ factor(Group), data=env4))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env4)
anova(lm(Shan ~ factor(Group), data=env4))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env4)
anova(lm(PD ~ factor(Group), data=env4))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env4)
# Sobs ***, rest *
summary(aov(env4[,25] ~ env4$Group))
cld(lsmeans(aov(env4[,25] ~ Group, data= env4), ~ Group, Letters = letters, adjust = "tukey"))

# Q5: Is the MB sig dif in hz/Sgp130FC Pups?
anova(lm(Sobs ~ factor(Group), data=env5))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env5)
anova(lm(Chao1 ~ factor(Group), data=env5))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env5)
anova(lm(Shan ~ factor(Group), data=env5))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env5)
anova(lm(PD ~ factor(Group), data=env5))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env5)
# all metrics ***
summary(aov(env5[,25] ~ env5$Group))
cld(lsmeans(aov(env5[,25] ~ Group, data= env5), ~ Group, Letters = letters, adjust = "tukey"))

# Q6: Is the MB sig dif in all Pups with CFD Mums?
anova(lm(Sobs ~ factor(Group), data=env6))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env6)
anova(lm(Chao1 ~ factor(Group), data=env6))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env6)
anova(lm(Shan ~ factor(Group), data=env6))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env6)
anova(lm(PD ~ factor(Group), data=env6))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env6)
# all metrics ***
summary(aov(env6[,25] ~ env6$Group))
cld(lsmeans(aov(env6[,25] ~ Group, data= env6), ~ Group, Letters = letters, adjust = "tukey"))

# Q7: Is the MB sig dif in all Pups with HFD Mums?
anova(lm(Sobs ~ factor(Group), data=env7))
bargraph.CI(x.factor = Group, response = Sobs, legend=TRUE, data=env7)
anova(lm(Chao1 ~ factor(Group), data=env7))
bargraph.CI(x.factor = Group, response = Chao1, legend=TRUE, data=env7)
anova(lm(Shan ~ factor(Group), data=env7))
bargraph.CI(x.factor = Group, response = Shan, legend=TRUE, data=env7)
anova(lm(PD ~ factor(Group), data=env7))
bargraph.CI(x.factor = Group, response = PD, legend=TRUE, data=env7)
# all metrics ***
summary(aov(env7[,25] ~ env7$Group))
cld(lsmeans(aov(env7[,25] ~ Group, data= env7), ~ Group, Letters = letters, adjust = "tukey"))



## Additional analyses


for(i in colnames(env.all[,23:26])) {
  print(i)
  print(summary(aov(env.all[,i] ~ env.all$Group)))
}

for(i in colnames(env.all[,23:26])) {
  print(i)
  print(cld(lsmeans(aov(env.all[,i] ~ Group, data= env.all), 
                    ~ Group, 
                    Letters = letters, 
                    adjust = "tukey")))
}
