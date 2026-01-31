FROM alpine:3.23.3

RUN apk add --no-cache \
	curl=8.17.0-r1 \
	jq=1.8.1-r0 \
	tar=1.35-r4 \
	libgcc=15.2.0-r2 \
	gcompat=1.1.0-r4

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
