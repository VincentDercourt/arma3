FROM debian:latest

LABEL maintainer="pixel@rageclic.fr" \
	  version=1.0 \
	  description="Create a server Arma3"

RUN apt-get update \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y mailutils postfix curl wget file bzip2 gzip unzip binutils bsdmainutils python util-linux ca-certificates tmux lib32gcc1 libstdc++6 libstdc++6:i386 expect sudo

COPY ./*.* /

RUN chmod 755 /start.sh \
    && sed -i -e 's/\r$//' /start.sh \
    && useradd -ms /bin/bash arma3server \
    && echo "arma3server:arma3server" | chpasswd && adduser arma3server sudo \
    && usermod -G tty arma3server
    
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR:fr
ENV LC_ALL fr_FR.UTF-8

VOLUME /home/arma3server

USER arma3server

WORKDIR /home/arma3server

EXPOSE 2302-2305 2344-2345 2302-2305/udp 2344-2345/udp

CMD ["/start.sh"]