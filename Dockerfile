## -*- docker-image-name: "mcreations/debian-tools" -*-

FROM debian:stable-slim
MAINTAINER Kambiz Darabi <darabi@m-creations.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get install -y --no-install-recommends \
            curl \
            hping3 \
            iproute2 \
            iputils-arping \
            jq \
            less \
            net-tools \
            netcat \
            socat \
            vim-tiny \
            wget &&\
    apt-get clean autoclean &&\
    apt-get autoremove --yes &&\
    rm -rf /var/lib/{apt,dpkg,cache,log}/
