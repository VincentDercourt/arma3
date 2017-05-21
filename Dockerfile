FROM debian

MAINTAINER sirpixel <pixel@rageclic.fr>

RUN apt-get update && apt-get install -y lib32gcc1 lib32stdc++6 wget redis-server binutils

RUN cd /root \
 	&& wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz \
	&& tar -zxvf steamcmd_linux.tar.gz \
	&& rm -f steamcmd_linux.tar.gz \
	&& mkdir arma3server
	
VOLUME /arma3

ENV steamUser=username
ENV steamPassword=password

EXPOSE 2302 2303 2304 2305 2344 2345 2302/udp 2303/udp 2304/udp 2305/udp 2344/udp 2345/udp

ADD /arma3 /arma3

RUN chmod 755 /arma3/start.sh
RUN service redis-server start

ENTRYPOINT ["/arma3/start.sh"]