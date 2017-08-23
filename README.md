
# SERVEUR ARMA3

--------------------------------------------------
## UTILISATION DE BASE

### Pour télécharger l'image :

>docker pull sirpixel/arm3

### pour exécuter l'image :

>docker run -p 2302-2305:2302-2305 -p 2344-2345:2344-2345 -p 2302-2305:2302-2305/udp -p 2344-2345:2344-2345/udp -v /home/docker/arma3:/arma3 -itd --name arma3 sirpixel/arma3

### Si vous souhaiter réaliser des modifications ou vérifier la console vous pouvez exécuter la commande

>docker attach arma3
    
### Vous devez modifier vos identifiants dans le fichier

>/home/arma3server/arma3server

Si vous avez un steam guard trois solutions

 1. Vous créez un nouveau compte steam et vous désactivez le SteamGuard
 2. Vous supprimmez temporaire le SteamGuard de votre compte
 3. Vous réaliser l'installation manuellement
		Pour cette solution vous devez 
		1. entrez dans votre conteneur avec la commande "docker attach arma3"
		2. Vous exécuter la commande suivante /home/arma3server/arma3server install
		3. Pendant l'installation on va vous poser plus question répondez "Y" a toutes (La majuscule est importante)
		4. Lorsque-l'on vous demande le steam guard récupérer via votre email ou smartphone et sesisez-le
		5. Continuez a répondre "Y" au autre question jusqu’à que l'installation soit terminé
		6. Utiliser la commande "/home/arma3server/arma3server start"
Astuce : Vous pouvez utiliser le racourci clavier "CTRL+p CTRL+q" pour quitter votre conteneur


## LISTE DES COMMANDES POSSIBLES

Une fois dans le conteneur vous pouvez utiliser les commandes

> /home/arma3server/arma3server start   //Pour démarrer le serveur
 /home/arma3server/arma3server stop    //Pour stoper le serveur
 /home/arma3server/arma3server restart //Pour redémarrer le server
 /home/arma3server/arma3server  update //Pour mettre a jour le serveur
 /home/arma3server/arma3server install //Pour installer le serveur
/home/arma3server/arma3server console  //Pour afficher le serveur

Ou directement en dehors du conteneur

>docker exec arma3 /home/arma3server/arma3server start   //Pour démarrer le serveur
docker exec arma3 /home/arma3server/arma3server stop    //Pour stoper le serveur
docker exec arma3 /home/arma3server/arma3server restart //Pour redémarrer le server
docker exec arma3 /home/arma3server/arma3server update //Pour mettre a jour le serveur
docker exec arma3 /home/arma3server/arma3server install //Pour installer le serveur
docker exec arma3 /home/arma3server/arma3server console  //Pour afficher le serveur

Vous pouvez retrouver la liste complète des commandes et de leur utilité ici
[https://gameservermanagers.com/lgsm/arma3server/](https://gameservermanagers.com/lgsm/arma3server/)

## Configuration du serveur

Vous pouvez modifier les informations sur le "port, ip, etc.." ici 

### arma3server
>/home/arma3server/arma3server

### le fichier de config par défaut se trouve dans le répertoire 

>/home/arma3server/newArma3/serverfiles/cfg

Pour ajouter une map il faut aller ici

>/home/arma3server/newArma3/serverfiles/mpmissions

**Les chemin fourni ici sont rédigé en fonction de ma plateforme de développement il sera nécessaire d'adapter selon votre configuration**

### SOURCE

Cette image docker a été réalisé avec l'installateur automatique de [https://gameservermanagers.com/](https://gameservermanagers.com/)

### UTILE

J'ai ajouté sur mon github un zip contenant une carte pouvant accueillir 40 joueurs https://github.com/VincentDercourt/arma3/blob/master/Arma3.zip

Exemple de fichier server.cfg
https://github.com/VincentDercourt/arma3/blob/master/server.cfg

Exemple de fichier basic.cfg
https://github.com/VincentDercourt/arma3/blob/master/basic.cfg

### INFORMATION

Vous pouvez nous retrouver sur le forum de la communauté HappyGuard 

[https://www.happyguard.fr/](https://www.happyguard.fr/)

ou sur le teamspeak 

[ts.happyguard.fr](ts3server://ts.happyguard.fr)


### Attention !!!!
Les ip failover peuvent rendre difficile la visibilité de votre serveur sur les listes steams et les listes de serveurs dans le jeu ou tout autre listes.
