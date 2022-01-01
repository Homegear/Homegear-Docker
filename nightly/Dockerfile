FROM debian:buster-slim
MAINTAINER Dr. Sathya Laufer <sathya@homegear.email>
RUN apt-get update && apt-get -y install apt-transport-https apt-utils wget ca-certificates gnupg libzip4 libavahi-client3 libavahi-client-dev insserv locales lsb-release
COPY installNightly.sh /installNightly.sh
RUN \
    touch /tmp/HOMEGEAR_STATIC_INSTALLATION; \
    touch /.dockerenv; \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen; \
    locale-gen; \
    wget https://apt.homegear.eu/Release.key && apt-key add Release.key && rm Release.key; \
    echo 'deb https://apt.homegear.eu/debian/buster/homegear/stable/ buster main' >> /etc/apt/sources.list.d/homegear.list; \
    chmod +x /installNightly.sh; \
    /installNightly.sh; \
    rm /installNightly.sh; \
    cp -a /etc/homegear /etc/homegear.config; \
    cp -a /var/lib/homegear /var/lib/homegear.data; \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

VOLUME ["/etc/homegear", "/var/lib/homegear", "/var/log/homegear"]

COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/bin/bash", "-c", "/start.sh"]

EXPOSE 80 443 2001 2002 2003
