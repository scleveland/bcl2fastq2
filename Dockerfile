FROM centos:7

RUN yum install -y unzip

# Install bcl2fastq 2.20.0
ADD https://support.illumina.com/content/dam/illumina-support/documents/downloads/software/bcl2fastq/bcl2fastq2-v2-20-0-linux-x86-64.zip /

RUN unzip /bcl2fastq2-v2-20-0-linux-x86-64.zip && \
	rpm -i bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm && \
	rm /bcl2fastq2-v2-20-0-linux-x86-64.zip && \
	rm /bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm

# Set default behavior to run the command and get help.
ENTRYPOINT ["bcl2fastq"]
CMD ["--help"]
