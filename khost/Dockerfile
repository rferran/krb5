# @edt ASIX M11 Curs 2017-2018
# kerberos:khost
# servidor kerberos
# ----------------------------------

FROM fedora:24
MAINTAINER @isx45128227 "@edt ASIX M11 Curs 2017-2018"
RUN mkdir /opt/docker/

RUN dnf -y update vi
RUN dnf -y install vim nmap procps iproute iputils krb5-libs krb5-workstation util-linux-user finger pam_krb5

COPY krb5.conf /opt/docker/
RUN cp /opt/docker/krb5.conf /etc/

COPY chfn /opt/docker
RUN cp /opt/docker/chfn /etc/pam.d/

COPY system-auth /opt/docker
RUN cp /opt/docker/system-auth /etc/pam.d/

COPY login /opt/docker
RUN cp /opt/docker/login /etc/pam.d/

RUN echo "CHFN_RESTRICT = yes" >> /etc/login.defs

WORKDIR /opt/docker

COPY startup.sh /opt/docker/
RUN chmod +x /opt/docker/startup.sh 
CMD ["/opt/docker/startup.sh"]


