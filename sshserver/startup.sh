#! /bin/bash
useradd anna
useradd pere
useradd pau 
useradd marta

kadmin -w kpau -s pau addprinc -randkey host/sshserver
kadmin -w kpau -s pau ktadd -k /etc/krb5.keytab host/sshserver

ssh-keygen -A 
/usr/sbin/sshd $OPTIONS
rm -rf /var/run/nologin

