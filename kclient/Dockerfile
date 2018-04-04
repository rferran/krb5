# @edt ASIX M11 Curs 2017-2018
# kerberos:kclient
# servidor kerberos
# ----------------------------------

FROM fedora:24
MAINTAINER @isx45128227 "@edt ASIX M11 Curs 2017-2018"
RUN mkdir /opt/docker/

RUN dnf -y update vi
RUN dnf -y install nmap vim iputils tree iproute mlocate procps krb5-libs krb5-workstation

COPY krb5.conf /opt/docker/
RUN cp /opt/docker/krb5.conf /etc/

WORKDIR /opt/docker
