FROM debian:stable-slim
LABEL maintainer "Antony Messerli <antony@mes.ser.li>"

RUN apt-get update  \
    && apt-get install -y \
            build-essential \
            binutils-dev \
            genisoimage \
            git \
            liblzma-dev \
    && git clone https://github.com/ipxe/ipxe ipxe-src \
    && ls -la && pwd \
    && cd ipxe-src/src \
    && ls -la && pwd \
    && make bin-arm64-efi/snp.efi \
    && ls -la && pwd
