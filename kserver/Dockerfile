# @edt ASIX M11 Curs 2017-2018
# kerberos:kserver
# servidor kerberos
# ----------------------------------

FROM fedora:24
MAINTAINER @isx45128227 "@edt ASIX M11 Curs 2017-2018"
RUN mkdir /opt/docker/

COPY install.sh /opt/docker/
RUN chmod +x /opt/docker/install.sh 
CMD ["/opt/docker/install.sh"]

COPY krb5.conf /opt/docker/
RUN cp -f /opt/docker/krb5.conf /etc/

COPY kdc.conf /opt/docker/
RUN chmod -R 777 /var/kerberos/krb5kdc/
RUN cp -f /opt/docker/kdc.conf /var/kerberos/krb5kdc/

COPY startup.sh /opt/docker/
RUN chmod +x /opt/docker/startup.sh 

COPY kadm5.acl /opt/docker/
RUN cp -f /opt/docker/kadm5.acl /var/kerberos/krb5kdc/

COPY createDB.sh /opt/docker/
RUN chmod +x /opt/docker/createDB.sh 
CMD ["/opt/docker/createDB.sh"]


WORKDIR /opt/docker
EXPOSE 749 88

CMD ["/opt/docker/startup.sh"]
