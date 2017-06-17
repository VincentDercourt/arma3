
# SERVEUR Arma 3

--------------------------------------------------
## UTILISATION DE BASE

### Pour télécharger l'image :

>docker pull sirpixel/arma3

### pour exécuter l'image :

>docker run -p 2302-2305:2302-2305 -p 2344-2345:2344-2345 -p 2302-2305:2302-2305/udp -p 2344-2345:2344-2345/udp -v /home/docker/arma3:/arma3 -e steamUser='SteamUser' -e steamPassword='PaswordSteam' -itd --name arma3 sirpixel/arma3

**Pensez à modifier l'identifiant steam et le password steam cela est nécessaire au bon fonctionnement de votre application**

### Si vous souhaitez réaliser des modifications (ajouter metamod, etc...) ou vérifier la console vous pouvez exécuter la commande

>docker attach arma3
    
Si l'on vous demande de rentré votre code de double authentification il vous suffit d'exécuter la commande ci-dessus et de taper votre code.

Vous pouvez également utiliser la commande ci-dessous pour voir ce qu'il se passe dans le conteneur

> docker logs arma3

## Configuration du serveur

Pour la configuration un zip est téléchargé a partir du dépot github avec les fichier de config par defaut.

Vous pouvez modifier ces fichiers dans le repertoire

>/home/arma3/serv/sc

### SOURCE

Cette image docker a été réalisé avec l'installateur automatique de [https://developer.valvesoftware.com/wiki/SteamCMD:fr](https://developer.valvesoftware.com/wiki/SteamCMD:fr)

### INFORMATION

Vous pouvez nous retrouver sur le forum de la communauté RAGECLIC 

[https://www.rageclic.fr/](https://www.rageclic.fr/)

ou sur le teamspeak 

[ts3.rageclic.fr](ts3server://ts3.rageclic.fr)

### AVENIR
Une nouvelle image sera ajouté avec gameservermanagers


