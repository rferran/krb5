## DOCKERS

### kserver

		docker network create kerberos

		docker run --net kerberos --name kserv -h kserver -it isx45128227/krb5:kserver /bin/bash

	 ./startup.sh 


