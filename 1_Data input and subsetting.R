### Tufael Dietary Fat 16S analyses 

# Paul Dennis and Rob Hoelzle Mar 2021

# Data input and subsetting

# Get data

# Get environmental metadata

env.all <- read.csv('../Data/env.csv', header=TRUE, row.names=1)

# Get OTU table

otu.tmp <- read.csv('../Data/otu_with_tax_1100.csv', header=TRUE, row.names=1)
otu.all <- as.data.frame(t(otu.tmp[,-179]/1100)) # transpose and divide by 7000 to get relative abundances

# Get Taxonomy

taxonomy <- otu.tmp[,179] # Make a list of OTUs with the respective taxonomy
taxonomy <- as.data.frame(taxonomy)
row.names(taxonomy) <- row.names(otu.tmp)
taxonomy$OTU = row.names(taxonomy)
taxonomy$OTU.tax = paste(taxonomy$OTU,taxonomy$taxonomy,sep='.')

# Get weighted unifrac

w_unifrac.all <- read.csv('../Data/weighted_unifrac.csv', header=TRUE, row.names=1)

# Check the samples are in the same order etc...

row.names(otu.all) == row.names(env.all)
row.names(otu.all) == row.names(w_unifrac.all)
rm(otu.tmp) # tidy up

#Subset to questions

env1 <- env.all[env.all$Q1 == 1,]
env2 <- env.all[env.all$Q2 == 1,]
env3 <- env.all[env.all$Q3 == 1,]
env4 <- env.all[env.all$Q4 == 1,]
env5 <- env.all[env.all$Q5 == 1,]
env6 <- env.all[env.all$Q6 == 1,]
env7 <- env.all[env.all$Q7 == 1,]
env8 <- env.all[env.all$Q8 == 1,]
env9 <- env.all[env.all$Q9 == 1,]
env10 <- env.all[env.all$Q10 == 1,]
env11 <- env.all[env.all$Q11 == 1,]
env12 <- env.all[env.all$Q12 == 1,]
env13 <- env.all[env.all$Q13 == 1,]

otu1 <- otu.all[env.all$Q1 == 1,]
otu2 <- otu.all[env.all$Q2 == 1,]
otu3 <- otu.all[env.all$Q3 == 1,]
otu4 <- otu.all[env.all$Q4 == 1,]
otu5 <- otu.all[env.all$Q5 == 1,]
otu6 <- otu.all[env.all$Q6 == 1,]
otu7 <- otu.all[env.all$Q7 == 1,]
otu8 <- otu.all[env.all$Q8 == 1,]
otu9 <- otu.all[env.all$Q9 == 1,]
otu10 <- otu.all[env.all$Q10 == 1,]
otu11 <- otu.all[env.all$Q11 == 1,]
otu12 <- otu.all[env.all$Q12 == 1,]
otu13 <- otu.all[env.all$Q13 == 1,]

w_unifrac1 <- w_unifrac.all[env.all$Q1 == 1,env.all$Q1 == 1]
w_unifrac2 <- w_unifrac.all[env.all$Q2 == 1,env.all$Q2 == 1]
w_unifrac3 <- w_unifrac.all[env.all$Q3 == 1,env.all$Q3 == 1]
w_unifrac4 <- w_unifrac.all[env.all$Q4 == 1,env.all$Q4 == 1]
w_unifrac5 <- w_unifrac.all[env.all$Q5 == 1,env.all$Q5 == 1]
w_unifrac6 <- w_unifrac.all[env.all$Q6 == 1,env.all$Q6 == 1]
w_unifrac7 <- w_unifrac.all[env.all$Q7 == 1,env.all$Q7 == 1]
w_unifrac8 <- w_unifrac.all[env.all$Q8 == 1,env.all$Q8 == 1]
w_unifrac9 <- w_unifrac.all[env.all$Q9 == 1,env.all$Q9 == 1]
w_unifrac10 <- w_unifrac.all[env.all$Q10 == 1,env.all$Q10 == 1]
w_unifrac11 <- w_unifrac.all[env.all$Q11 == 1,env.all$Q11 == 1]
w_unifrac12 <- w_unifrac.all[env.all$Q12 == 1,env.all$Q12 == 1]
w_unifrac13 <- w_unifrac.all[env.all$Q13 == 1,env.all$Q13 == 1]

env.pup <- env.all[env.all$Host == "Pup",]
env.dad <- env.all[env.all$Host == "Dad",]
env.mum <- env.all[env.all$Host == "Mum",]

otu.pup <- otu.all[env.all$Host == "Pup",]
otu.dad <- otu.all[env.all$Host == "Dad",]
otu.mum <- otu.all[env.all$Host == "Mum",]

otu.pup.cont <- otu.all[env.all$Host == "Pup",]
env.pup.cont <- env.all[env.all$Host == "Pup",]
otu.pup.cont <- otu.pup.cont[env.pup.cont$Intervention1 == "Control",]
env.pup.cont <- env.pup.cont[env.pup.cont$Intervention1 == "Control",]
otu.pup.cont <- otu.pup.cont[env.pup.cont$HostSampleAge == "PND7",]
env.pup.cont <- env.pup.cont[env.pup.cont$HostSampleAge == "PND7",]
row.names(otu.pup.cont) == row.names(env.pup.cont)
