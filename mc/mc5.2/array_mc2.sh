#!/bin/bash

#$ -pe smp 2
#$ -q long
#$ -N mc2_52
#$ -t 1-7:1

# Sample three chains

for i in {1..3}
do
	~/stan/nfi/mc51/mc2_neutralmodel sample num_samples=10000 num_warmup=5000 thin=5 data file=~/stan/nfi/scaleddata30Nov${SGE_TASK_ID}.R init=0.1 output file=/scratch365/qread/stan/mc52out/sp${SGE_TASK_ID}mod2samples$i.csv
done

