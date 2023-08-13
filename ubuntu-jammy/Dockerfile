FROM ubuntu:jammy

RUN sed -i.bak "s,\(ca.archive\|archive\|security\).ubuntu.com,<ip|domain>/repository/apt-proxy,g" /etc/apt/sources.list
RUN apt-get update && apt-get clean