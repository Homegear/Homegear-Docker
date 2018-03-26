FROM debian:stretch
MAINTAINER Sathya Laufer <sathya@homegear.email>
RUN apt-get update && apt-get -y install apt-transport-https apt-utils wget ca-certificates gnupg
COPY installNightly.sh /installNightly.sh
RUN \
    wget https://homegear.eu/packages/Release.key && apt-key add Release.key && rm Release.key; \
    echo 'deb https://homegear.eu/packages/Debian/ stretch/' >> /etc/apt/sources.list.d/homegear.list; \
    chmod +x /installNightly.sh; \
    /installNightly.sh; \
    cp -R /etc/homegear /etc/homegear.config; \
    cp -R /var/lib/homegear /var/lib/homegear.data; \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/etc/homegear", "/var/lib/homegear", "/var/log/homegear"]

COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh

EXPOSE 2001 2002 2003
