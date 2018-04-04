# @edt ASIX M11 Curs 2017-2018
# kerberos:sshserver
# servidor kerberos
# ----------------------------------

FROM fedora:24
MAINTAINER @isx45128227 "@edt ASIX M11 Curs 2017-2018"
RUN mkdir /opt/docker/


RUN dnf -y update vi
RUN dnf -y install vim nmap procps krb5-libs krb5-workstation openssh openssh-server openssh-clients passwd

COPY krb5.conf /opt/docker/
RUN cp /opt/docker/krb5.conf /etc/

RUN echo "KerberosAuthentication yes" >> /etc/ssh/sshd_config 
RUN echo "KerberosTicketCleanup yes" >> /etc/ssh/sshd_config 

WORKDIR /opt/docker

COPY startup.sh /opt/docker/
RUN chmod +x /opt/docker/startup.sh 
CMD ["/opt/docker/startup.sh"]

