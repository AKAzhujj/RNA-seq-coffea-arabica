#!/bin/bash
# StringTie quantification with gffcmp annotation and Ballgown table creation

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJ_ROOT="$(dirname "$SCRIPT_DIR")"

# Alternative annotation GTF (e.g., output of gffcompare)
ALT_GTF="$PROJ_ROOT/reference/coffea.all.gtf"
# Input sorted BAM files
BAM_DIR="$PROJ_ROOT/results/samtools"
# Output Ballgown directory for this version
BALLGOWN_OUT="$PROJ_ROOT/results/ballgown_gffcmp"

mkdir -p "$BALLGOWN_OUT"

for i in a1 a2 a3 b1 b2 b3 c1 c2 c3
do
    stringtie -e -B -p 8 \
        -G "$ALT_GTF" \
        -o "${BALLGOWN_OUT}/${i}/${i}.gtf" \
        "${BAM_DIR}/${i}_sort.bam"
done

echo "Ballgown tables (gffcmp) saved to $BALLGOWN_OUT"
