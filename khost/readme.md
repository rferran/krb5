## DOCKERS

### khost
#### Host client amb autenticació PAM amb kerberos. chfn, login i system-auth amb kerberos.

		docker run --net kerberos --name khost -h khost -it isx45128227/krb5:khost /bin/bash
		
	Abans de comprovar cal executar el fitxer:
	
		./startup.sh

	Per comprovar que funciona només cal intentar canviar el finger a l'usuari marta, anna, pere, pau, julia o jordi.
	

