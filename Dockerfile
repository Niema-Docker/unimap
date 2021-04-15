# Minimal Docker image for Unimap using Alpine base
FROM alpine:latest
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install Unimap
RUN apk update && \
    apk add bash gcc make musl-dev unzip zlib-dev && \
    wget "https://github.com/lh3/unimap/archive/refs/heads/master.zip" && \
    unzip master.zip && \
    cd unimap-master && \
    make && \
    mv unimap /usr/local/bin/unimap && \
    cd .. && \
    rm -rf master.zip unimap-master
