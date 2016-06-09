FROM java:8-jre-alpine

# Directories and scripts
ENV log_dir /data/logs

COPY scripts/bootstrap.sh /

RUN mkdir -p ${log_dir}

WORKDIR /
