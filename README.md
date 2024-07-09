# Calculating relatedness using somalier

## Install
- A static binary of [somalier](https://github.com/brentp/somalier/releases/) (v0.2.19)
- Reference genome GRCh38
- [Sites file](https://github.com/brentp/somalier/files/3412456/sites.hg38.vcf.gz) specifying informative polymorphic sites
- Somalier files for 1k genomes (available [here](https://zenodo.org/record/3479773/files/1kg.somalier.tar.gz))
- Ancestry labels file for 1k genomes (available [here](https://raw.githubusercontent.com/brentp/somalier/master/scripts/ancestry-labels-1kg.tsv))

## Somalier input files
1. Create list of bam/cram files
2. For each bam/cram extract informative sites using somalier 'extract'


```
somalier extract \
/data/resources/human/references/GRCh38_masked/GRCh38_full_analysis_set_plus_decoy_hla_masked.fa


TSO = /Output/results/*/TSO500/DNA_Analysis/results/crams/*_${TSO_id}.cram
ctDNA = /Output/results/*/tso500_ctdna/post_processing/BAMs/${ctDNA_id}.stitched.bam

```

## Calculate relatedness

