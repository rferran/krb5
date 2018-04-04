# @edt ASIX M11 Curs 2017-2018
# kerberos:sshserver
# servidor kerberos
# ----------------------------------

FROM fedora:24
MAINTAINER @isx45128227 "@edt ASIX M11 Curs 2017-2018"
RUN mkdir /opt/docker/

COPY install.sh /opt/docker/
RUN chmod +x /opt/docker/install.sh 
CMD ["/opt/docker/install.sh"]

COPY krb5.conf /opt/docker/
RUN cp /opt/docker/krb5.conf /etc/

RUN echo "KerberosAuthentication yes" >> /etc/ssh/sshd_config 
RUN echo "KerberosTicketCleanup yes" >> /etc/ssh/sshd_config 

WORKDIR /opt/docker

COPY startup.sh /opt/docker/
RUN chmod +x /opt/docker/startup.sh 
CMD ["/opt/docker/startup.sh"]

