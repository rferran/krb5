# @edt ASIX M11 Curs 2017-2018
# kerberos:khost
# servidor kerberos
# ----------------------------------

FROM fedora:24
MAINTAINER @isx45128227 "@edt ASIX M11 Curs 2017-2018"
RUN mkdir /opt/docker/

RUN dnf -y update vi
RUN dnf -y install vim procps iputils iproute tree nmap mlocate \
		   openldap openldap-clients openldap-servers man-db
COPY * /opt/docker/
COPY ldap.conf /etc/openldap/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
RUN /opt/docker/install.sh
WORKDIR /opt/docker
EXPOSE 389 636
CMD ["/opt/docker/startup.sh"]
