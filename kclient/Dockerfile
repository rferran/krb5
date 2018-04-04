# @edt ASIX M11 Curs 2017-2018
# kerberos:kclient
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

WORKDIR /opt/docker
