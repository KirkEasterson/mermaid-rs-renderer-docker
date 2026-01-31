FROM alpine:latest

RUN apk add --no-cache curl jq tar libgcc gcompat

ARG OWNER="1jehuang"
ARG REPO="mermaid-rs-renderer"
ARG TAG="v0.1.0"
ARG FILE="mmdr-x86_64-unknown-linux-gnu.tar.gz"
ARG DOWNLOAD_URL="https://github.com/${OWNER}/${REPO}/releases/download/${TAG}/${FILE}"

RUN curl -LO ${DOWNLOAD_URL}
RUN tar -xz -f ${FILE}
RUN chown root:root mmdr
RUN mv mmdr /usr/bin/
RUN rm ${FILE}
