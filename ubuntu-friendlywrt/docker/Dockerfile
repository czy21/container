FROM registry.czy21.com/library/ubuntu-openwrt-base

RUN wget -O - https://raw.githubusercontent.com/friendlyarm/build-env-on-ubuntu-bionic/master/install.sh | bash
RUN apt-get clean
RUN ln -sf /usr/bin/python2 /usr/bin/python

RUN su bruce bash -c 'git config --global user.email "bruce@localhost" && git config --global user.name "bruce"'