## Kerberos amb dockers


Abans d'executar cap contenidor cal crear la xarxa per a que es vegin entre ells.

`docker network create kerberos`


### kserver

`docker run --net kerberos --name kserver -h kserver -it isx45128227/krb5:kserver /bin/bash`

Dins del docker executem el fitxer startup per iniciar el servidor.

`./startup.sh`


### kclient

`docker run --net kerberos --name kclient -h kclient -it isx45128227/krb5:kclient /bin/bash`


### sshserver

`docker run --net kerberos --name sshserver -h sshserver -it isx45128227/krb5:sshserver /bin/bash`


### khost

`docker run --net kerberos --name khost -h khost -it isx45128227/krb5:khost /bin/bash`
