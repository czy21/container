FROM jenkins/jenkins:2.485-jdk21

USER root
RUN apt-get update -y && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.asc] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update -y
RUN docker_version=`apt-cache madison docker-ce | awk '{ print $3 }' | grep "27.5.1" | head -n 1`;apt-get install -y docker-ce-cli=${docker_version}
RUN ln -sf /usr/libexec/docker/cli-plugins/docker-compose /usr/bin/docker-compose
USER jenkins