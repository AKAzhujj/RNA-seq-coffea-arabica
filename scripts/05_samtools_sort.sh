bash
#!/bin/bash
# Sort BAM files using samtools sort

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJ_ROOT="$(dirname "$SCRIPT_DIR")"

BAM_DIR="$PROJ_ROOT/results/samtools"         # Both input and output

for i in a1 a2 a3 b1 b2 b3 c1 c2 c3
do
    samtools sort -l 4 -o "${BAM_DIR}/${i}_sort.bam" "${BAM_DIR}/${i}.bam"
done

echo "Sorting done. Sorted BAM files saved to $BAM_DIR"
