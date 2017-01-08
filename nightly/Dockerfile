FROM debian:jessie
MAINTAINER Sathya Laufer <sathya@homegear.email>
RUN apt-get update && apt-get -y install apt-transport-https wget ca-certificates apt-utils
RUN wget https://homegear.eu/packages/Release.key && apt-key add Release.key && rm Release.key
RUN echo 'deb https://homegear.eu/packages/Debian/ jessie/' >> /etc/apt/sources.list.d/homegear.list
COPY installNightly.sh /installNightly.sh
RUN /installNightly.sh
RUN cp -R /etc/homegear /etc/homegear.config
RUN cp -R /var/lib/homegear /var/lib/homegear.data

VOLUME ["/etc/homegear", "/var/lib/homegear", "/var/log/homegear"]

COPY start.sh /start.sh
CMD /start.sh

EXPOSE 2001 2002 2003
