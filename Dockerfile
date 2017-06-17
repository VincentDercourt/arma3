FROM debian

LABEL maintainer="pixel@rageclic.fr" \
	  version=1.0 \
	  description="Create a server Arma3"

RUN apt-get update && apt-get install -y lib32gcc1 lib32stdc++6 wget unzip

VOLUME /arma3

ENV steamUser \
    steamPassword="" \
    loadMapDefault=1

EXPOSE 2302:2305 2344:2345 2302:2305/udp 2344:2345/udp

RUN useradd -ms /bin/bash arma3

COPY ./*.* /

RUN chmod 755 /start.sh \
    && chown -R arma3:arma3 /arma3

USER arma3

WORKDIR /home/arma3

RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz \
    && tar -xvf steamcmd_linux.tar.gz \
    && rm -f steamcmd_linux.tar.gz

RUN chmod +x ./steamcmd.sh

CMD ["/start.sh"]
