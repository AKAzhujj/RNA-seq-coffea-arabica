#!/bin/bash
# Download Coffea canephora genome and annotation from Ensembl Plants

# Genome FASTA
wget -c https://ftp.ensemblgenomes.ebi.ac.uk/pub/plants/release-57/fasta/coffea_canephora/dna/Coffea_canephara.AUK_PRJEB4211.dna.toplevel.fa.gz

# Annotation GTF
wget -c https://ftp.ensemblgenomes.ebi.ac.uk/pub/plants/release-57/gtf/coffea_canephora/Coffea_canephara.AUK_PRJEB4211.57.gtf.gz

echo "Download complete. Unzip the files before use."
