FROM ubuntu:22.04

RUN apt-get update
# basic pkg
RUN apt install -y wget vim git bash-completion make gcc sudo curl

RUN echo -n "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/99-custom
RUN useradd -d /home/opsor -l -m -s /bin/bash opsor && usermod -aG sudo opsor

# https://openwrt.org/docs/guide-developer/toolchain/install-buildsystem
# official pkg
RUN apt install -y build-essential clang flex bison g++ gawk gcc-multilib g++-multilib gettext git libncurses-dev libssl-dev python3-distutils python3-setuptools rsync swig unzip zlib1g-dev file wget

# addition pkg
RUN apt install -y qemu-utils libelf-dev

RUN apt-get clean

WORKDIR /data