FROM ubuntu:jammy

RUN sed -i.bak "s,\(ca.archive\|archive\|security\).ubuntu.com,<ip|domain>/repository/apt-proxy,g" /etc/apt/sources.list
RUN apt-get update

RUN apt install -y wget vim git bash-completion make gcc sudo curl

RUN echo -n "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/99-custom
RUN useradd -d /home/opsor -l -m -s /bin/bash opsor && usermod -aG sudo opsor

WORKDIR /data