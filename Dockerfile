FROM java:8-jre-alpine

# Directories and scripts
ENV log_dir /data/logs

RUN set -x \
    && apk add --no-cache bash

COPY scripts/bootstrap.sh /

RUN mkdir -p ${log_dir}

WORKDIR /
