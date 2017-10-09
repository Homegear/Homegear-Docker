FROM debian:stretch
MAINTAINER Sathya Laufer <sathya@homegear.email>
RUN apt-get update && apt-get -y install apt-transport-https apt-utils
RUN apt-get update && apt-get -y install wget ca-certificates gnupg
#RUN apt-get update && apt-get -y install libreadline7 insserv procps ntp libenchant1c2a libltdl7 libmariadbclient18 libmcrypt4 libxml2 libxslt1.1 unzip p7zip-full libqdbm14 libssl1.1 libgnutlsxx28
RUN wget https://homegear.eu/packages/Release.key && apt-key add Release.key && rm Release.key
RUN echo 'deb https://homegear.eu/packages/Debian/ stretch/' >> /etc/apt/sources.list.d/homegear.list
COPY installNightly.sh /installNightly.sh
RUN chmod +x /installNightly.sh
RUN /installNightly.sh
RUN cp -R /etc/homegear /etc/homegear.config
RUN cp -R /var/lib/homegear /var/lib/homegear.data
# Inspired by Dockerfile from visevision  
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/etc/homegear", "/var/lib/homegear", "/var/log/homegear"]

COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh

EXPOSE 2001 2002 2003
