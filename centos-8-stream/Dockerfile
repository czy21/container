# quay.io/centos/centos:stream8
FROM registry-proxy.czy21-public.com/centos/centos:stream8

RUN sed -i.bak -e "s,^mirrorlist=,#mirrorlist=,g" -e "s,^#baseurl=,baseurl=,g" -e "s,^baseurl=http://mirror.centos.org,baseurl=http://<ip|domain>/repository/yum-proxy,g" /etc/yum.repos.d/CentOS-*.repo
RUN yum clean all && yum --refresh makecache

RUN yum -y install git