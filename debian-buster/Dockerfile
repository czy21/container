FROM debian:buster

RUN sed -i.bak "s,\(security\|deb\).debian.org,<ip|domain>/repository/apt-proxy,g" /etc/apt/sources.list
RUN apt-get update && apt-get clean