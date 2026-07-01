#!/bin/bash
# This is for trimming a batch of paired-end data

# Get the directory of this script, then locate the project root
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJ_ROOT="$(dirname "$SCRIPT_DIR")"

# Define input and output paths relative to project root
RAW_DATA="$PROJ_ROOT/data"
TRIM_OUT="$PROJ_ROOT/results/trim_galore"

# Create output directory
mkdir -p "$TRIM_OUT"

for i in a1 a2 a3 b1 b2 b3 c1 c2 c3
do
    trim_galore -q 20 --phred33 --clip_R1 15 --clip_R2 15 \
    --paired "${RAW_DATA}/${i}_1.fq.gz" "${RAW_DATA}/${i}_2.fq.gz" \
    --gzip -o "$TRIM_OUT"
done

echo "Trimming completed. Cleaned data saved to $TRIM_OUT"
