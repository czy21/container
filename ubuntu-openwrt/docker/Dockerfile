FROM ubuntu:jammy

RUN apt-get update
# basic pkg
RUN apt install -y wget vim git bash-completion make gcc sudo curl

RUN echo -n "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/99-custom
RUN useradd -d /home/opsor -l -m -s /bin/bash opsor && usermod -aG sudo opsor

RUN apt install -y build-essential clang flex g++ gawk gcc-multilib gettext git libncurses5-dev libssl-dev python3-distutils rsync unzip zlib1g-dev file wget qemu-utils libelf-dev
RUN apt-get clean

WORKDIR /data