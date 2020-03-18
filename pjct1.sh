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
N=100

# Make fastqc directory
mkdir -p $FASTQC

# Make multiqc directory to store multiqc files
mkdir -p $MULTIQC

# Get the number of runs and store metadata
esearch -db sra -query $PROJECT_ACC | efetch -format runinfo > runinfo.csv

# Get SRR ids from runinfo.csv and store in runids.txt
cat runinfo.csv | cut -f 1 -d ',' | grep SRR > runids.txt

# Get ids and layout columns from csv file and get runs for all single ends
cat runinfo.csv | csvcut -c Run,LibraryLayout | grep SINGLE | cut -f 1 -d ',' > runids_SE.txt

# Get all paired ends and put them into runids_PE.txt
cat runinfo.csv | csvcut -c Run,LibraryLayout | grep PAIRED | cut -f 1 -d ',' > runids_PE.txt

# Run first 10 of each SRR id and store in Run_SE
cat runids_SE.txt | parallel fastq-dump -X N {} -O Run_SE

# Run first 10 of each SRR id and store in Run_PE
cat runids_PE.txt | parallel fastq-dump -X N --split-files {} -O Run_PE

# Run fastqc of fastq in reads and store in fastqc_out
fastqc $RUN/*.fastq -o $FASTQCcd

# Run multiqc on fastqc and store in multiqc_out
multiqc $FASTQC -o $MULTIQC
