FROM ubuntu:16.04
ADD sources.list /etc/apt/sources.list
ADD sysctl.conf /etc/sysctl.conf

RUN apt-get update
RUN apt-get install -y \
  iputils-ping tcpdump iptables traceroute \
  openvpn easy-rsa pptp-linux xl2tpd \
  bridge-utils netcat 

RUN apt-get install -y \
  vim fish ruby git

RUN git clone https://github.com/jpetazzo/pipework.git /tmp/pipework && cp /tmp/pipework/pipework /usr/local/bin/pipework
