### Heatmap 

source("Functions.R")

## Dad samples
  # Transpose otu table, set columns to label, rows to taxonomy, and order by taxonomy
  otu.dad.heatmap <- otu.dad
  row.names(otu.dad.heatmap) <- env.dad$Label
  otu.dad.heatmap <- as.data.frame(t(otu.dad.heatmap))
  row.names(otu.dad.heatmap) == row.names(taxonomy)
  row.names(otu.dad.heatmap) <- taxonomy$OTU.tax
  otu.dad.heatmap$tax <- taxonomy$taxonomy
  otu.dad.heatmap <- otu.dad.heatmap[order(otu.dad.heatmap$tax),]
  otu.dad.heatmap <- subset(otu.dad.heatmap, select = -tax)
  
  # Remove low count otus
  nrow(otu.dad.heatmap)
  otu.dad.heatmap <- otu.dad.heatmap[which(apply(otu.dad.heatmap,1,max)>=0.03),]
  nrow(otu.dad.heatmap)
  
  # Plot otu heatmap
  heatmap.dad <- pheatmap(sqrt(otu.dad.heatmap), color = pal, border_color = "black",
                    cluster_rows = F, cluster_cols = F, fontsize = 10,
                    gaps_col = c(6,12,17),
                    gaps_row = c(1,3))

## Mum samples
  # Transpose otu table, set columns to label, rows to taxonomy, and order by taxonomy
  otu.mum.heatmap <- otu.mum
  row.names(otu.mum.heatmap) <- env.mum$Label
  otu.mum.heatmap <- as.data.frame(t(otu.mum.heatmap))
  row.names(otu.mum.heatmap) == row.names(taxonomy)
  row.names(otu.mum.heatmap) <- taxonomy$OTU.tax
  otu.mum.heatmap$tax <- taxonomy$taxonomy
  otu.mum.heatmap <- otu.mum.heatmap[order(otu.mum.heatmap$tax),]
  otu.mum.heatmap <- subset(otu.mum.heatmap, select = -tax)
  
  # Remove low count otus
  nrow(otu.mum.heatmap)
  otu.mum.heatmap <- otu.mum.heatmap[which(apply(otu.mum.heatmap,1,max)>=0.03),]
  nrow(otu.mum.heatmap)
  
  # Plot otu heatmap
  heatmap.mum <- pheatmap(sqrt(otu.mum.heatmap), color = pal, border_color = "black",
                          cluster_rows = F, cluster_cols = F, fontsize = 10,
                          gaps_col = c(6,12,16),
                          gaps_row = c(2,7,8))
  
## pup samples
  # Transpose otu table, set columns to label, rows to taxonomy, and order by taxonomy
  otu.pup.heatmap <- otu.pup
  row.names(otu.pup.heatmap) <- env.pup$Label
  otu.pup.heatmap <- as.data.frame(t(otu.pup.heatmap))
  row.names(otu.pup.heatmap) == row.names(taxonomy)
  row.names(otu.pup.heatmap) <- taxonomy$OTU.tax
  otu.pup.heatmap$tax <- taxonomy$taxonomy
  otu.pup.heatmap <- otu.pup.heatmap[order(otu.pup.heatmap$tax),]
  otu.pup.heatmap <- subset(otu.pup.heatmap, select = -tax)
  
  # Remove low count otus
  nrow(otu.pup.heatmap)
  otu.pup.heatmap <- otu.pup.heatmap[which(apply(otu.pup.heatmap,1,max)>=0.03),]
  nrow(otu.pup.heatmap)
  
  # Plot otu heatmap
  heatmap.pup <- pheatmap(sqrt(otu.pup.heatmap), color = pal, border_color = "black",
                          cluster_rows = F, cluster_cols = F, fontsize = 10,
                          gaps_col = c(6,13,15,18,24,30,36,41,46,51,53),
                          gaps_row = c(10,11,31,35))
  
## pup control samples
  # Transpose otu table, set columns to label, rows to taxonomy, and order by taxonomy
  otu.pup.c.heatmap <- otu.pup.cont
  row.names(otu.pup.c.heatmap) <- env.pup.cont$SampleLabel
  otu.pup.c.heatmap <- as.data.frame(t(otu.pup.c.heatmap))
  row.names(otu.pup.c.heatmap) == row.names(taxonomy)
  row.names(otu.pup.c.heatmap) <- taxonomy$OTU.tax
  otu.pup.c.heatmap$tax <- taxonomy$taxonomy
  otu.pup.c.heatmap <- otu.pup.c.heatmap[order(otu.pup.c.heatmap$tax),]
  otu.pup.c.heatmap <- subset(otu.pup.c.heatmap, select = -tax)
  
  # Remove low count otus
  nrow(otu.pup.c.heatmap)
  otu.pup.c.heatmap.f <- otu.pup.c.heatmap[which(apply(otu.pup.c.heatmap,1,max)>=0.03),]
  nrow(otu.pup.c.heatmap.f)
  
  # Plot otu heatmap
  heatmap.pup.c <- pheatmap(sqrt(otu.pup.c.heatmap.f), color = pal, border_color = "black",
                          cluster_rows = F, cluster_cols = F, fontsize = 10,
                          gaps_col = c(6, 10, 15, 21, 23),
                          gaps_row = c(8, 9, 28))
  