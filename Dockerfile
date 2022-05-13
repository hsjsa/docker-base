FROM ubuntu:22.04

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN apt-get -qq update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -qq install -y tzdata wget unzip git python3 python3-pip \
    locales python3-lxml \
    curl pv jq ffmpeg \
    p7zip-full p7zip-rar \
    libcrypto++-dev libssl-dev \
    libc-ares-dev libcurl4-openssl-dev \
    libsqlite3-dev libsodium-dev && \
    curl -L https://github.com/jaskaranSM/megasdkrest/releases/download/v0.1/megasdkrest -o /usr/local/bin/megasdkrest && \
    chmod +x /usr/local/bin/megasdkrest
RUN apt-get -qq install -y libcppunit-dev
RUN apt-get -qq install -y libxml2-dev
RUN apt-get -qq install -y autoconf
RUN apt-get -qq install -y automake
RUN apt-get -qq install -y autotools-dev
RUN apt-get -qq install -y autopoint
RUN apt-get -qq install -y libtool
RUN apt-get -qq install -y aria2
