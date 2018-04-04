# @edt ASIX M11 Curs 2017-2018
# kerberos:khost
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


