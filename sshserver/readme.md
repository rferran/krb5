## DOCKERS

### sshserver
#### Servidor sshd kerberitzat.

		docker run --net kerberos --name sshserver -h sshserver -it isx45128227/krb5:sshserver /bin/bash

	Per engegar el servidor ssh:
	
		./startup.sh
