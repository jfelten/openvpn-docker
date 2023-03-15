FROM alpine:3.17.2

# Install needed packages
RUN apk update && apk add openssl easy-rsa openvpn iptables bash openvpn-auth-pam google-authenticator libqrencode

# Configure tun
RUN mkdir -p /dev/net && mknod /dev/net/tun c 10 200
