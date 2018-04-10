## DOCKERS

### kclient
#### Host client de kerberos. Serveix per validar que des d’un host extern s’obtenen tiquets hi hi ha comunicació kerberos. També la utilització de kadmin.

		docker run --net kerberos --name kclient -h kclient -it isx45128227/krb5:kclient /bin/bash

	Per comprovar que s'obtenen tiquets:
		kinit pere        --> kpere
		kinit marta       --> kmarta
		kinit pau         --> kpau
		kinit isx45128227 --> kisx45128227
		kinit anna        --> kanna
		
	Per comprovar que podem iniciar sessió amb kadmin i realitzar tasques d'administració es pot amb:
		kadmin -p isx45128227  --> kisx45128227
		kadmin -p pau          --> kpau





