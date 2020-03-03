set -uex

# Get the project number.
PROJECT_ACC=$1

# Directory to store fastq files.
DATA=data

# Directory to store fastqc files
FASTQC=fastqc_out

# Create fastqc_out directory
mkdir -p $FASTQC

# Directory to store multiqc output files
MULTIQC=multiqc_out

# Create multiqc output directory
mkdir -p $MULTIQC

# Get the number of runs and store metadata
esearch -db sra -query $PROJECT_ACC | efetch -format runinfo > runinfo.csv


# Get SRR ids from runinfo and store them in runids
cat runinfo.csv | cut -f 1 -d ',' | grep SRR > runids.txt


# Run all SRR at once and only shows the first 10 single ends
cat runids.txt | parallel fastq-dump -X 10 {} -O $DATA


# Run quality control on fastq files
fastqc $DATA/*.fastq -o $FASTQC


# Create a combined fastqc report of all runs
multiqc $FASTQC -o $MULTIQC
