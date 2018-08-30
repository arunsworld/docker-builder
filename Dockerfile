FROM ubuntu:bionic

RUN apt-get update --fix-missing && apt-get install -y wget vim git \
        build-essential && \
        apt-get clean

RUN wget --quiet https://cmake.org/files/v3.12/cmake-3.12.1-Linux-x86_64.tar.gz -O ~/cmake.tar.gz && \
    cd && tar xvf cmake.tar.gz && cp cmake-3.12.1-Linux-x86_64/bin/* /usr/bin/ && \
    cp -r cmake-3.12.1-Linux-x86_64/share/* /usr/share/ && rm -r cmake-3.12.1-Linux-x86_64 && \
    rm -r cmake.tar.gz

