#!/bin/bash

install="1"
FILE="/arma3/install.txt"

if [ -f $FILE ]; then
   install=`cat $FILE`
fi

if [ "$install" -eq "1" ]
then

    echo "0" > "$FILE"

    ./steamcmd.sh +login "$steamUser" "$steamPassword" +force_install_dir /home/arma3/serv +app_update 233780 validate +quit

    cd serv/
    wget https://github.com/VincentDercourt/arma3/raw/master/Arma3.zip
    unzip -o Arma3.zip
    rm Arma3.zip

    mkdir -p sc/profiles

    cp /server.cfg /arma3/serv/sc
    cp /basic.cfg /home/arma3/serv/sc

    cp -r /home/arma3/serv /arma3

else
    cp -r /arma3/serv /home/arma3
    cd serv/
fi


./arma3server -port=2302 -config=sc/server.cfg -cfg=sc/basic.cfg -profiles=sc/profiles -name=default -world=empty

echo
echo "Retour au bash"
/bin/bash