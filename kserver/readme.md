## DOCKERS

### kserver
#### Servidor kerberos anomenat kserver integrat a la xarxa kerberos.

		docker network create kerberos

		docker run --net kerberos --name kserver -h kserver -it isx45128227/krb5:kserver /bin/bash
		
	Per engegar el servei: 

	 ./startup.sh 


