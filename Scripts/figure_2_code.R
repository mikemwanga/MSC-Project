
#R script to generate panel plot for Kilifi and global sequences.
#Ensure trees are rooted and ordered tips


library(ggplot2)
library(ggtree)
library(patchwork)


#load data tree
vp6_tree = read.tree('./data/Global/vp6/vp6.aln6.fas.nwk')
vp7_tree = read.tree('./data/Global/vp7/vp7.aln9.fas.nwk')
vp4_tree = read.tree('./data/Global/vp4/vp4.aln8.fas.nwk')
vp3_tree = read.tree('./data/Global/vp3/vp3.aln5.fas.nwk')
vp2_tree = read.tree('./data/Global/vp2/vp2.aln6.fas.nwk')
vp1_tree = read.tree('./data/Global/vp1/vp1.aln9.fas.nwk')

#load metadata
vp7_anno = read.table('./data/Global/vp7/vp7_annotation.txt', header=TRUE, sep='\t')
vp6_anno = read.table('./data/Global/vp6/vp6_annotation.txt', header=TRUE, sep='\t')
vp4_anno = read.table('./data/Global/vp4/vp4_annotation.txt', header=TRUE, sep='\t')
vp3_anno = read.table('./data/Global/vp3/vp3_annotation.txt', header=TRUE, sep='\t')
vp2_anno = read.table('./data/Global/vp2/vp2_annotation.txt', header=TRUE, sep='\t')
vp1_anno = read.table('./data/Global/vp1/vp1_annotation.txt', header=TRUE, sep='\t')


#generate the trees

vp7 = ggtree(vp7_tree) %<+% vp7_anno +
  geom_tippoint(size=0.2) + aes(colour=Key)+ ggtitle("VP7")+
  scale_color_manual(values = cols) + theme_tree2() +
  theme(plot.title = element_text(size=7), axis.text.x = element_text(size=5))

vp4 = ggtree(vp4_tree) %<+% vp4_anno +
  geom_tippoint(size=0.2) + aes(colour=Key)+ ggtitle("VP4")+
  scale_color_manual(values = cols) + theme_tree2()+
  theme(plot.title = element_text(size=7),axis.text.x = element_text(size=5))

vp6 = ggtree(vp6_tree) %<+% vp6_anno +
  geom_tippoint(size=0.2) + aes(colour=Key)+ ggtitle("VP6")+
  scale_color_manual(values = cols) + theme_tree2() +
  theme(plot.title = element_text(size=7), axis.text.x = element_text(size=5))

vp1 = ggtree(vp1_tree) %<+% vp1_anno +
  geom_tippoint(size=0.2) + aes(colour=Key)+ ggtitle("VP1")+
  scale_color_manual(values = cols) +theme_tree2()+
  theme(plot.title = element_text(size=7), axis.text.x = element_text(size=5))

vp2 = ggtree(vp2_tree) %<+% vp2_anno +
  geom_tippoint(size=0.2) + aes(colour=Key)+ ggtitle("VP2")+
  scale_color_manual(values = cols) + theme_tree2() +theme(plot.title = element_text(size=7),
                                                           axis.text.x = element_text(size=5))

vp3 = ggtree(vp3_tree) %<+% vp3_anno +
  geom_tippoint(size=0.2) + aes(colour=Key)+ ggtitle("VP3")+
  scale_color_manual(values = cols) + theme_tree2() +theme(plot.title = element_text(size=7),
                                                           axis.text.x = element_text(size=5))

pdf(file="./Figures/figure_2.pdf")
combined = vp7 + vp4 + vp6 + vp1 + vp2 + vp3 & theme(legend.position="bottom", legend.title = element_blank())

combined + plot_layout(guides="collect")

dev.off()
