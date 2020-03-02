# search the project nember, get the number of runs
# create file runinfo.csv stores readable metadata
esearch -db sra -query $1 | efetch -format runinfo > runinfo.csv
# open runinfo.csv and cut the first column. Columns are separated by ","
# locate lines starts with SRR, redirect them into runids.txt
cat runinfo.csv | cut -f 1 -d ',' | grep SRR > runids.txt
# run all SRR at once and only shows the first 10 paired ends
cat runids.txt | parallel fastq-dump -X 10 --split-files {}
# runs quality control on fastq files, produces .fastqc files
fastqc --extract SRR2981459_1.fastq SRR2981460_1.fastq SRR2981461_1.fastq
# run all fastqc files at once
multiqc ./*fastqc*
