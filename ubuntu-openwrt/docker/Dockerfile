FROM ubuntu:24.04

RUN echo -n "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/99-custom

RUN apt-get -y update
# basic pkg
RUN apt-get -y install wget vim git make gcc sudo curl

# https://openwrt.org/docs/guide-developer/toolchain/install-buildsystem
# official pkg
RUN apt-get -y install build-essential clang flex bison g++ gawk gcc-multilib g++-multilib gettext git libncurses5-dev libssl-dev python3-setuptools rsync swig unzip zlib1g-dev file wget

# addition pkg
RUN apt-get -y install qemu-utils

# tool
RUN curl https://dl.min.io/client/mc/release/linux-amd64/mc -o /usr/local/bin/mc
RUN chmod +x /usr/local/bin/mc && ln -sf /usr/local/bin/mc /usr/bin/mc

RUN apt-get clean

USER ubuntu
WORKDIR /data