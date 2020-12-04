# MSC-Project
Whole genome analysis of RVA G1P[8] strain before and after vaccine introduction in Kenya
## Introduction
G1P[8] is among the most predominant and medically important RVA strain in human infections, globally. This strain accounts for approximately 29% of all the circulating RVA strains in Africa and was responsible for ~47% of all diarrhea infections in a multicenter study in Kenya[11]. The implementation of the monovalent Rotarix vaccine in NIP in Kenya resulted to a significant reduction in hospitalization cases caused by RVA strains. Interestingly, in the first year of vaccine introduction, there was continued dominance of genotype G1P[8] whose pre-valence declined in the subsequent years. However, increase in prevalence of non-G1P[8] strains (G2P[4], G3P[8], G3P[6] and G9P[8])after vaccine introduction have been reported as well. Such emergencies and increase in prevalence of RVA strains after vaccine introduction emphasize the need to monitor the impact of RVA vaccines on these circulating strains in the population. For this to be achieved, the availability of sufficient complete genome data before and after vaccine introduction will inform on the effectiveness of the vaccine against the diverse and evolutionary complex RVA strains.  Here, we employed high-throughput primer-independent direct genome and primer-dependent genome sequencing methods from stool samples to infer epidemiology, characterize and determine RVA diversity of G1P[8] RVA strains in rural Kenya, Kilifi, before and after vaccine introduction.

## Objectives

This study is objected to answer the following questions;

a. What are the genome constellations of RVA G1P[8] strains circulating before and after vaccine introduction in Kilifi

b. What are the genetic differences at whole genome level of G1P[8] strains with Rotarix vaccine? How are the differences related to reduced vaccine induced pressure?

c. What is the phylogenetic and evolutionary relationship between the observed G1P[8] strains to global strains?

d. What are the origin, spread and transmission patterns of G1P[8] strains in rural Kenya?



## Methods
    Genome assembly
    
    Multiple seqeunce alignments
    
    Phylogenetic reconstructions
## Preliminary Outputs

#### G1P[8] prevalence in Kilifi

<img src="https://github.com/mikemwanga/MSC-Project/blob/main/Genotype_prevalence.png" align="center" width="750" height="500">

While there was variation in prevalence of G1P[8] strains, they were continoiusly observed throughout the surveillance period. It was the dominant genotype in 2011, 2013, 2015, and 2017. It caused up to 47% of all RVA infections in Kenya.

#### What are the genomic constellations of G1P[8]

All possed a Wa-like genotype constellation, except two post-vaccine strains that; one possed a DS-1 like genotype E2 on the NSP4 gene segment, and the other possed a T6 genotype on the NSP3 gene segment. Potential rearssortants.

<image src="https://github.com/mikemwanga/MSC-Project/blob/main/Constellations.png" align="center">

### How is the local diversity/each segment/clustering patterns
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/Local_diversity_claster_patterm.png" align="center">
Distinct clustering of pre and post vaccine strains in all the segments. <br>
All Gene segmenets partitioned into multiple clusters. Pre-vaccine strains formed multiple clusters in genes VP1, VP3, NSP1, NSP2 NSP3. <br>
Post-vaccines formed single clusters across all the segments except for segments NSP3 and NSP4 (different genogroup types). <br>
A single post-vaccine strain from 2015 clustered with pre-vaccine strains across all the 11 segments. Indicative of countinued circulation of pre-vaccine after vaccine introduction.<br>

### Global Diversity
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/VP7_VP4_VP5_VP1.png" align="center">
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/VP2_VP3_NSP1_NSP2.png" align="center">
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/NSP3_NSP4_NSP5_2.png" align="center">

### T6 Genotype

<image src="https://github.com/mikemwanga/MSC-Project/blob/main/T6.aln.treefile.png" align="center">
    
### E2 Genotype

<image src="https://github.com/mikemwanga/MSC-Project/blob/main/E2.aln.nwk.png" align="center">

### Selection Pressure
Refers to determining evolutionary rate of protein coding genes - which is based on calculation the ratio of dN/dS substitutions. 
dN/dS < 1 - purifying selection, dN/dS =1 neutral selection, dN/dS > 1 - positive selection. The ratio summarizes evolutionary rate of genes and can be an informative feature in identifying genes which are the most conserved and those that are less conserved(undergone adaptive evolution). The rate of change indicates selective pressure occuring at non-synonymous sites.

## Steps

    1. Analysis carried out in Datamonkey
    
    2. Use multiple models in the websuite (FEL, FUBAR, mixed effects model of episodic selection (MEME))
    
    3. Sequences submitted to Datamonkey for predictions which are hereby recorded for all the segment
 
   <image src="https://github.com/mikemwanga/MSC-Project/blob/main/Sites_selection_pressure.png" align="center">
## B-Cell epitopes
### VP7 Epitopes
   <image src="https://github.com/mikemwanga/MSC-Project/blob/main/VP7_Rotarix_vaccine_epitope.png" align="center">


### VP4 Epitopes
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/VP4_Rotarix_epitope.png" align="center">
       
## Cytotoxic VP7 T-Cell Epitopes
CD8-Tcells play an important role in clearing of RVA infection and providing protection against re-infections.
Despite the fact that the antibodies, particularly IgA, are generally regarded as the most important protective factors against rotavirus infection, the role of cell-mediated im- munity, namely CD8? T lymphocytes, has also been demonstrated in several studies. Animal models are quite popular for studying rotavirus infection. In particular, a knockout mouse model with defective specific immune- dependent genes resulting in a decrease in certain lym- phocyte populations showed that CD8? T cells can mediate the clearance of rotavirus infection from the organism, resulting in complete short-term and partial long-term protection against reinfection. Two linear cyto- toxic T lymphocyte (CTL) epitopes have previously been shown to be present on VP7 at amino acid positions 16-28 and 40-52, [Morozova et al,2015](https://doi.org/10.1007/s00705-015-2439-6)

There is growing evidence that RVA strains carrying different subgenotypes or sublineages within the same genotype may have different antigenic properties, thus potentially allowing the virus to evade the immune re- sponse. In other words, the difference between the amino acid composition of antigenic epitopes in the vaccine and the wild-type strains that circulate in the area where it is planned to introduce the vaccine may undermine its effectiveness. Since both vaccines are based on strains that were isolated in the early 1980s, it is likely that Rus- sian RVA field strains carry alleles of genes that are different from those of the vaccine. Changes in an allele within a genotype or the occurrence of amino acid substi- tutions at antigenic sites can be followed up by sequencing and analyzing the amino acid sequences, [Morozova et al,2015](https://doi.org/10.1007/s00705-015-2439-6)


Analysis of Tcell epitopes only found two major differences between the vaccine and circulating strains. Figure 3.
        ![image](https://github.com/mikemwanga/MSC-Project/blob/main/T_Cell%20epitopes.png)


## BEAST Analysis





