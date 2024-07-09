
# Run from desired output directory

counter=0
while read -r line; do
    # Skip header line
    if [$counter -eq 1]; then
        continue
    fi

    # Get SI, ctDNA, and TSO sample IDs
    SI_no = $(echo $line | cut -d "," -f 1)
    ctDNA_no = $(echo $line | cut -d "," -f 2)
    TSO500_no = $(echo $line | cut -d "," -f 3)

done < sample_info.csv

