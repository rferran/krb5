#! /bin/bash
useradd anna
useradd pere
useradd pau 
useradd marta

kadmin.local addprinc -randkey host/sshserver 
kadmin.local ktadd -k /etc/krb5.keytab host/sshserver

ssh-keygen -A 
/usr/sbin/sshd $OPTIONS
rm -rf /var/run/nologin

