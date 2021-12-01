FROM ubuntu
RUN set -ex && \
    apt update && \
    apt install -y -q curl wget net-tools bind9-utils