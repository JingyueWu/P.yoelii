set -uex

# Assign a different project number
PROJECT_ACC=$1

# Directory to store fastq files
RUN=reads

# Make fastqc output directory to store all fastqc files
FASTQC=fastqc_output

# Make multiqc output directory
MULTIQC=multiqc_output

# Limit number of reads
N=1000

# Make fastqc directory
mkdir -p $FASTQC

# Make multiqc directory to store multiqc files
mkdir -p $MULTIQC

# Get the number of runs and store metadata
esearch -db sra -query $PROJECT_ACC | efetch -format runinfo > runinfo.csv

# Get SRR ids from runinfo.csv and store in runids.txt
cat runinfo.csv | cut -f 1 -d ',' | grep SRR > runids.txt

# Run first 10 of each SRR id and store in reads
cat runids.txt | parallel fastq-dump -X $N {} -O $RUN

# Run fastqc of fastq in reads and store in fastqc_out
fastqc $RUN/*.fastq -o $FASTQC

# Run multiqc on fastqc and store in multiqc_out
multiqc $FASTQC -o $MULTIQC
