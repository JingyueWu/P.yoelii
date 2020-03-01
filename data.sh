# this is to search the project nember and get the number of runs
esearch -db sra -query PRJNA305391

esearch -db sra -query PRJA305391 | efetch -firmat runinfo > runinfo.csv

cat runinfo.csv | cut -f 1 -d ','
cat runinfo.csv | cut -f 1 -d ',' | grep SRR > runids.txt
cat runids.txt | parallel fastq-dump -X 10000 --split-files {}


#fastqc --extract SRR2981459_1.fastq SRR2981460_1.fastq SRR2981461_1.fastq
#export LC_ALL=C.UTF-8
#export LANG=C.UTF-8
#multiqc ./*fastqc*
