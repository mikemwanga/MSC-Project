
#R script to generate panel plot of Kilifi and global seqeunces.
#Ensure trees are rooted and ordered tips

library(ggplot2)
library(ggtree)
library(patchwork)


#load data tree
nsp5_tree = read.tree('./data/Global/nsp5/nsp5.aln6.fas.nwk')
nsp4_tree = read.tree('./data/Global/nsp4/nsp4.aln6.fas.nwk')
nsp3_tree = read.tree('./data/Global/nsp3/nsp3.aln3.fas.nwk')
nsp2_tree = read.tree('./data/Global/nsp2/nsp2.aln5.fas.nwk')
nsp1_tree = read.tree('./data/Global/nsp1/nsp1.aln8.fas.nwk')

#load metadata
nsp5_anno = read.table('./data/Global/nsp5/nsp5_annotation.txt', header=TRUE, sep='\t')
nsp4_anno = read.table('./data/Global/nsp4/nsp4_annotation.txt', header=TRUE, sep='\t')
nsp3_anno = read.table('./data/Global/nsp3/nsp3_annotation.txt', header=TRUE, sep='\t')
nsp2_anno = read.table('./data/Global/nsp2/nsp2_annotation.txt', header=TRUE, sep='\t')
nsp1_anno = read.table('./data/Global/nsp1/nsp1_annotation.txt', header=TRUE, sep='\t')


#generate the trees

nsp1 = ggtree(nsp1_tree) %<+% nsp1_anno +
  geom_tippoint(size=0.3) + aes(colour=Key)+ ggtitle("NSP1")+
  scale_color_manual(values = cols) + theme_tree2() +
  theme(plot.title = element_text(size=7), axis.text.x = element_text(size=5))

nsp2 = ggtree(nsp2_tree) %<+% nsp2_anno +
  geom_tippoint(size=0.3) + aes(colour=Key)+ ggtitle("NSP2")+
  scale_color_manual(values = cols) + theme_tree2()+
  theme(plot.title = element_text(size=7),axis.text.x = element_text(size=5))

nsp3 = ggtree(nsp3_tree) %<+% nsp3_anno +
  geom_tippoint(size=0.3) + aes(colour=Key)+ ggtitle("NSP3")+
  scale_color_manual(values = cols) + theme_tree2() +
  theme(plot.title = element_text(size=7), axis.text.x = element_text(size=5))

nsp4 = ggtree(nsp4_tree) %<+% nsp4_anno +
  geom_tippoint(size=0.3) + aes(colour=Key)+ ggtitle("NSP4")+
  scale_color_manual(values = cols) +theme_tree2()+
  theme(plot.title = element_text(size=7), axis.text.x = element_text(size=5))

nsp5 = ggtree(nsp5_tree) %<+% nsp5_anno +
  geom_tippoint(size=0.3) + aes(colour=Key)+ ggtitle("NSP5")+
  scale_color_manual(values = cols) + theme_tree2() +theme(plot.title = element_text(size=7),
        axis.text.x = element_text(size=5))


pdf(file="./Figures/figure_3.pdf")
combined = nsp1 + nsp2 + nsp3 + nsp4 + nsp5 & theme(legend.position="bottom", legend.title = element_blank())

combined + plot_layout(guides="collect")

dev.off()
