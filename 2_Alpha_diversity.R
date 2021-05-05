### Alpha Diversity

source("Functions.R")

# Q1: Is the MB* sig. diff. between WT female (TM-1) and Sgp130 female (TM-2) on CFD/HFD ?
anova(lm(Sobs ~ factor(GroupLabelLabel), data=env1))
bargraph.CI(x.factor = GroupLabelLabel, response = Sobs, legend=TRUE, data=env1)
anova(lm(Chao1 ~ factor(GroupLabelLabel), data=env1))
bargraph.CI(x.factor = GroupLabelLabel, response = Chao1, legend=TRUE, data=env1)
anova(lm(Shan ~ factor(GroupLabelLabel), data=env1))
bargraph.CI(x.factor = GroupLabelLabel, response = Shan, legend=TRUE, data=env1)
anova(lm(PD ~ factor(GroupLabelLabel), data=env1))
bargraph.CI(x.factor = GroupLabelLabel, response = PD, legend=TRUE, data=env1)
# all no sig dif
summary(aov(env1[,28] ~ env1$GroupLabelLabel))
cld(lsmeans(aov(env1[,28] ~ GroupLabelLabel, data= env1), ~ GroupLabelLabel, Letters = letters, adjust = "tukey"))


# Q2: Is the MB* sig. diff. between Sgp130 female (TM-2) and Sgp130 male (TM-2) on CFD/HFD ?
anova(lm(Sobs ~ factor(GroupLabelLabel), data=env2))
bargraph.CI(x.factor = GroupLabelLabel, response = Sobs, legend=TRUE, data=env2)
anova(lm(Chao1 ~ factor(GroupLabelLabel), data=env2))
bargraph.CI(x.factor = GroupLabelLabel, response = Chao1, legend=TRUE, data=env2)
anova(lm(Shan ~ factor(GroupLabelLabel), data=env2))
bargraph.CI(x.factor = GroupLabelLabel, response = Shan, legend=TRUE, data=env2)
anova(lm(PD ~ factor(GroupLabelLabel), data=env2))
bargraph.CI(x.factor = GroupLabelLabel, response = PD, legend=TRUE, data=env2)
# all metrics ***
summary(aov(env2[,28] ~ env2$GroupLabelLabel))
cld(lsmeans(aov(env2[,28] ~ GroupLabelLabel, data= env2), ~ GroupLabelLabel, Letters = letters, adjust = "tukey"))

# Q3: Is the MB* sig. diff. between WT female (TM-1) and Het.* Sgp130 pups (TM-1) on CFD/HFD ?
anova(lm(Sobs ~ factor(GroupLabelLabel), data=env3))
bargraph.CI(x.factor = GroupLabelLabel, response = Sobs, legend=TRUE, data=env3)
anova(lm(Chao1 ~ factor(GroupLabelLabel), data=env3))
bargraph.CI(x.factor = GroupLabelLabel, response = Chao1, legend=TRUE, data=env3)
anova(lm(Shan ~ factor(GroupLabelLabel), data=env3))
bargraph.CI(x.factor = GroupLabelLabel, response = Shan, legend=TRUE, data=env3)
anova(lm(PD ~ factor(GroupLabelLabel), data=env3))
bargraph.CI(x.factor = GroupLabelLabel, response = PD, legend=TRUE, data=env3)
# all metrics ***
summary(aov(env3[,28] ~ env3$GroupLabelLabel))
cld(lsmeans(aov(env3[,28] ~ GroupLabelLabel, data= env3), ~ GroupLabelLabel, Letters = letters, adjust = "tukey"))

# Q4: Is the MB* sig. diff. between Sgp130 female (TM-2)and Homo. Sgp130 pups (TM-2) on CFD/HFD ?
anova(lm(Sobs ~ factor(GroupLabel), data=env4))
bargraph.CI(x.factor = GroupLabel, response = Sobs, legend=TRUE, data=env4)
anova(lm(Chao1 ~ factor(GroupLabel), data=env4))
bargraph.CI(x.factor = GroupLabel, response = Chao1, legend=TRUE, data=env4)
anova(lm(Shan ~ factor(GroupLabel), data=env4))
bargraph.CI(x.factor = GroupLabel, response = Shan, legend=TRUE, data=env4)
anova(lm(PD ~ factor(GroupLabel), data=env4))
bargraph.CI(x.factor = GroupLabel, response = PD, legend=TRUE, data=env4)
# Sobs ***, rest *
summary(aov(env4[,28] ~ env4$GroupLabel))
cld(lsmeans(aov(env4[,28] ~ GroupLabel, data= env4), ~ GroupLabel, Letters = letters, adjust = "tukey"))

# Q5: Is the MB* sig. diff. between Het. Sgp130 pups (TM-1) and Homo. Sgp130 pups (TM-2) on CFD/HFD ?
anova(lm(Sobs ~ factor(GroupLabel), data=env5))
bargraph.CI(x.factor = GroupLabel, response = Sobs, legend=TRUE, data=env5)
anova(lm(Chao1 ~ factor(GroupLabel), data=env5))
bargraph.CI(x.factor = GroupLabel, response = Chao1, legend=TRUE, data=env5)
anova(lm(Shan ~ factor(GroupLabel), data=env5))
bargraph.CI(x.factor = GroupLabel, response = Shan, legend=TRUE, data=env5)
anova(lm(PD ~ factor(GroupLabel), data=env5))
bargraph.CI(x.factor = GroupLabel, response = PD, legend=TRUE, data=env5)
# all metrics ***
summary(aov(env5[,28] ~ env5$GroupLabel))
cld(lsmeans(aov(env5[,28] ~ GroupLabel, data= env5), ~ GroupLabel, Letters = letters, adjust = "tukey"))

# Q6: Is the MB* sig. diff. between WT pups (Historical data) and Het. Sgp130 pups (TM-1) on CFD/HFD ?
anova(lm(Sobs ~ factor(GroupLabel), data=env6))
bargraph.CI(x.factor = GroupLabel, response = Sobs, legend=TRUE, data=env6)
anova(lm(Chao1 ~ factor(GroupLabel), data=env6))
bargraph.CI(x.factor = GroupLabel, response = Chao1, legend=TRUE, data=env6)
anova(lm(Shan ~ factor(GroupLabel), data=env6))
bargraph.CI(x.factor = GroupLabel, response = Shan, legend=TRUE, data=env6)
anova(lm(PD ~ factor(GroupLabel), data=env6))
bargraph.CI(x.factor = GroupLabel, response = PD, legend=TRUE, data=env6)
# all metrics ***
summary(aov(env6[,28] ~ env6$GroupLabel))
cld(lsmeans(aov(env6[,28] ~ GroupLabel, data= env6), ~ GroupLabel, Letters = letters, adjust = "tukey"))

# Q7: Is the MB* sig. diff. between WT pups (Historical data) and Homo. Sgp130 pups (TM-2) on CFD/HFD ?
anova(lm(Sobs ~ factor(GroupLabel), data=env7))
bargraph.CI(x.factor = GroupLabel, response = Sobs, legend=TRUE, data=env7)
anova(lm(Chao1 ~ factor(GroupLabel), data=env7))
bargraph.CI(x.factor = GroupLabel, response = Chao1, legend=TRUE, data=env7)
anova(lm(Shan ~ factor(GroupLabel), data=env7))
bargraph.CI(x.factor = GroupLabel, response = Shan, legend=TRUE, data=env7)
anova(lm(PD ~ factor(GroupLabel), data=env7))
bargraph.CI(x.factor = GroupLabel, response = PD, legend=TRUE, data=env7)
# all metrics ***
summary(aov(env7[,28] ~ env7$GroupLabel))
cld(lsmeans(aov(env7[,28] ~ GroupLabel, data= env7), ~ GroupLabel, Letters = letters, adjust = "tukey"))

# Q8: Is the MB* sig. diff. between WT Mum on CFD/HFD at E0 ?

# Q9: Is the MB* sig. diff. between WT Mum on CFD/HFD at E17 ?

# Q10: Is the MB* sig. diff. between WT pups on CFD/HFD at PND3 ?

# Q11: Is the MB* sig. diff. between WT pups on CFD/HFD at PND7 ?

# Q12: Is the MB sig dif in Pups with dif cross foster models?

# Q13: Is the MB sig dif in Pups with dif fmt models?


## Additional analyses


for(i in colnames(env.all[,26:29])) {
  print(i)
  print(summary(aov(env.all[,i] ~ env.all$GroupLabel)))
}

for(i in colnames(env.all[,26:29])) {
  print(i)
  print(cld(lsmeans(aov(env.all[,i] ~ GroupLabel, data= env.all), 
                    ~ GroupLabel, 
                    Letters = letters, 
                    adjust = "tukey")))
}
