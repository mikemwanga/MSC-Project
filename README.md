# MSC-Project
Whole genome analysis of RVA G1P[8] strain before and after vaccine introduction in Kenya
## Introduction
G1P[8] is among the most predominant and medically important RVA strain in human infections, globally. This strain accounts for approximately 29% of all the circulating RVA strains in Africa and was responsible for ~47% of all diarrhea infections in a multicenter study in Kenya. The implementation of the monovalent Rotarix vaccine in NIP in Kenya resulted to a significant reduction in hospitalization cases caused by RVA strains. Interestingly, in the first year of vaccine introduction, there was continued dominance of genotype G1P[8] whose pre-valence declined in the subsequent years. However, increase in prevalence of non-G1P[8] strains (G2P[4], G3P[8], G3P[6] and G9P[8])after vaccine introduction have been reported as well. Such emergencies and increase in prevalence of RVA strains after vaccine introduction emphasize the need to monitor the impact of RVA vaccines on these circulating strains in the population. For this to be achieved, the availability of sufficient complete genome data before and after vaccine introduction will inform on the effectiveness of the vaccine against the diverse and evolutionary complex RVA strains.  Here, we employed high-throughput primer-independent direct genome and primer-dependent genome sequencing methods from stool samples to infer epidemiology, characterize and determine RVA diversity of G1P[8] RVA strains in rural Kenya, Kilifi, before and after vaccine introduction.

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

<img src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/Genotype_prevalence.png" align="center" width="750" height="500">

While there was variation in prevalence of G1P[8] strains, they were continoiusly observed throughout the surveillance period. It was the dominant genotype in 2011, 2013, 2015, and 2017. It caused up to 47% of all RVA infections in Kenya.

#### What are the genomic constellations of G1P[8]

All possed a Wa-like genotype constellation, except two post-vaccine strains that; one possed a DS-1 like genotype E2 on the NSP4 gene segment, and the other possed a T6 genotype on the NSP3 gene segment. Potential rearssortants.

<image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/Constellations.png" align="center">

### How is the local diversity/each segment/clustering patterns
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/Local_diversity_claster_patterm.png" align="center">
Distinct clustering of pre and post vaccine strains in all the segments. <br>
All Gene segmenets partitioned into multiple clusters. Pre-vaccine strains formed multiple clusters in genes VP1, VP3, NSP1, NSP2 NSP3. <br>
Post-vaccines formed single clusters across all the segments except for segments NSP3 and NSP4 (different genogroup types). <br>
A single post-vaccine strain from 2015 clustered with pre-vaccine strains across all the 11 segments. Indicative of countinued circulation of pre-vaccine after vaccine introduction.<br>

## Local genetic diversity
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/Genetic_diversity_local.png" align="center" width='650' height='650'>
  
Shows pairwise genetic distances within each gene, from Kilifi data <br>
Genetic distances supports corcirculation of multiple clusters of the G1P[8] strains

### Global Diversity
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/VP7_VP4_VP5_VP1.png" align="center" width='650' height='550'>
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/VP2_VP3_NSP1_NSP2.png" align="center" width='650' height='550'>
<image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/NSP3_NSP4_NSP5_2.png" align="center" width='750' height='600'>
    
Local strains cluster with similar genotypes observed across the world. <br>
The vaccine strain clustered distantyl <br>


### T6 Genotype

  <image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/T6.aln.treefile.png" align="center">
    
 Phylogeny of genotype T6 <br>
 Closest to a T6 genotype isolated from goat in Uganda 2014 and bovine from Italy . <br> 
 Potential rearsortant strain or zoonotic transmission
 
    
### E2 Genotype

    <image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/E2.aln.nwk.png" align="center">
    
 Clustred with rearsortant strains from Vietnam and Japan <br>
 Potential rearsortant between DS-1-like and Wa-like strains.
 

### Selection Pressure
Refers to determining evolutionary rate of protein coding genes - which is based on calculation the ratio of dN/dS substitutions. 
dN/dS < 1 - purifying selection, dN/dS =1 neutral selection, dN/dS > 1 - positive selection. The ratio summarizes evolutionary rate of genes and can be an informative feature in identifying genes which are the most conserved and those that are less conserved(undergone adaptive evolution). The rate of change indicates selective pressure occuring at non-synonymous sites.

## Steps

  1. Analysis carried out in Datamonkey <br>  
  2. Use multiple models in the website (FEL, FUBAR, mixed effects model of episodic selection (MEME)) <br>
  3. Sequences submitted to Datamonkey for predictions which are hereby recorded for all the segment
      <image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/Sites_selection_pressure.png" align="center">
  
  None of the pre and post vaccine changes were detected to be under any selection
  
      <image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/alignment.png" align="center" width='800' height='550'>
  
    
## Comparison of B-cell epitopes between the vaccine strain and the locally observed strains <br>
Amino acid identity between the epitopes and the vaccine implies the compatibility of the antibodies to the antigens. Differences imply potential failure by the vaccine strains to recognize antigens upon infection.
### VP7 Epitopes
   <image src="https://github.com/mikemwanga/MSC-Project/blob/main/Iamges/VP7_Rotarix_vaccine_epitope.png" align="center">


### VP4 Epitopes
    <image src="https://github.com/mikemwanga/MSC-Project/blob/main/Images/VP4_Rotarix_epitope.png" align="center">
    
No unique epitopes observed in the vaccine strains. No changes in the epitopes after vaccine introduction.
       
## Cytotoxic VP7 T-Cell Epitopes
CD8-Tcells play an important role in clearing of RVA infection and providing protection against re-infections.
Despite the fact that the antibodies, particularly IgA, are generally regarded as the most important protective factors against rotavirus infection, the role of cell-mediated immunity, namely CD8? T lymphocytes, has also been demonstrated in several studies. Animal models are quite popular for studying rotavirus infection. In particular, a knockout mouse model with defective specific immunedependent genes resulting in a decrease in certain lymphocyte populations showed that CD8? T cells can mediate the clearance of rotavirus infection from the organism, resulting in complete short-term and partial long-term protection against reinfection. Two linear cytotoxic T lymphocyte (CTL) epitopes have previously been shown to be present on VP7 at amino acid positions 16-28 and 40-52, [Morozova et al,2015](https://doi.org/10.1007/s00705-015-2439-6)

There is growing evidence that RVA strains carrying different subgenotypes or sublineages within the same genotype may have different antigenic properties, thus potentially allowing the virus to evade the immune response. In other words, the difference between the amino acid composition of antigenic epitopes in the vaccine and the wild-type strains that circulate in the area where it is planned to introduce the vaccine may undermine its effectiveness. Since both vaccines are based on strains that were isolated in the early 1980s, it is likely that Russian RVA field strains carry alleles of genes that are different from those of the vaccine. Changes in an allele within a genotype or the occurrence of amino acid substitutions at antigenic sites can be followed up by sequencing and analyzing the amino acid sequences, [Morozova et al,2015](https://doi.org/10.1007/s00705-015-2439-6)


Analysis of Tcell epitopes only found two major differences between the vaccine and circulating strains. Figure 3.
        ![image](https://github.com/mikemwanga/MSC-Project/blob/main/Images/T_Cell%20epitopes.png)


## Evolutionary rate, time scaled phylogeny and population dynamic analysis

Perform Cluster analysis and sequence similarity was carried out using the online tool CD-HIT version 4.6 http://weizhongli- lab.org/cdhit_suite/cgi-bin/index.cgi?cmd1⁄4cd-hit-est. The strength of the temporal clock signal of the dataset was carried out by conducting a regression of root to tip genetic distances against year of sampling analysis using TempEst v 1.5. Two clock models were initially evaluated strict and relaxed molecular clock, with four different tree priors, constant population size, exponential population size, Bayesian Skyride plot and Gausian Markov Random Field Skyride plot. Each selected model was run for an initial 30, 000, 000 states. Models were then compare using the Bayes factor with marginal likelihood estimated using the path sampling and stepping stone methods imple- mented in BEAST version 1.10.4 [19]. Further analysis was then done using the relaxed clock with Gausian Markov Random Field Skyride plot coalescent prior. The MCMC run was set at 100, 000, 000 states with a 10% burn in. Results were visualised in Tracer version 1.8. (http://tree. bio.ed.ac.uk/software/tracer/). The effective sampling size (ESS) was calculated for each parameter, all ESS values were >200 indicating suf- ficient sampling. Bayesian skyride analysis was carried out to visualise the epidemic evolutionary history using Tracer v 1.8. (http://tree.bio.ed. ac.uk/software/tracer/). The maximum clade credibility tree was selected from the posterior tree distribution after 10% burn-in using TreeAnnotator v 1.8. (http://beast.bio.ed.ac.uk/TreeAnnotator/) and a time scaled MCC tree was visualised in FigTree vs 1.4.

**From Khuzwayo**
Coalescence analyses were performed by using BEAUTi v1.7.5 and BEAST v1.8 (65, 66) with the following parameter specifications: lognormal relaxed (uncorrelated) clock model (67), a constant-size coalescent tree prior, a Hasegawa- Kishino-Yano (HKY85) nucleotide substitution model with estimated base frequencies (68), and a & site heterogeneity model with 4 rate categories (69) and a prior mutation rate (%) of '1.0 " 10#3
nucleotide
substitutions/site/year, as previously reported by Zeller et al. (35). The maximum likelihood trees generated as described above were used as starting trees for the Bayesian analysis in BEAST. We used a GMRF tree prior, which also allows the investigation of the population dynamics, i.e., effective population size (Ne
&) or relative genetic diversity, over time. A total of 200 million Markov chain Monte
Carlo (MCMC) iterations were performed and sampled every 40,000th generation. The first 20 million iterations (10% of the total) from the MCMC analysis, burn-in time, were discarded since these iterations may represent states that the chain explored before reaching the equilibrium state of the target distribution. The mean values and 95% HPDs of the mutation rates and the tMRCAs for each rotavirus segment were calculated from the BEAST output by using Tracer v1.6.0 (https://tree.bio.ed.ac.uk/ software/tracer/). The MCC tree for each viral segment was generated by using Tree Annotator v2.1.2 (http://beast.bio.ed.ac.uk/treeannotator) and visualized by using FigTree v1.4.2 (http://tree.bio.ed.ac.uk/ software/figtree/)

## Phylogeography Analysis
## Change in diversity before and after VI
## Map vaccination status of your geographical location
## Map areas where G1P8 was identified
## Perfome network analysis or something
## Protein structure based on the B/A vacine changes


