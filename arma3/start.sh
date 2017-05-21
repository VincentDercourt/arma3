#!/bin/bash
/root/steamcmd.sh +login $steamUser $steamPassword +force_install_dir /arma3 +app_update 233780 validate +quit

cd /arma3

./arma3server -port=2302 -config=sc/server.cfg -cfg=sc/basic.cfg -profiles=sc/profiles -name=default -world=empty

exec "$@"