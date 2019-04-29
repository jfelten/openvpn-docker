# Smallest base image
FROM centos:7.5.1804

ADD VERSION .

# Install needed packages
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories && \
    yum update && yum install openssl easy-rsa openvpn iptables bash && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

# Configure tun
RUN mkdir -p /dev/net && \
     mknod /dev/net/tun c 10 200 

