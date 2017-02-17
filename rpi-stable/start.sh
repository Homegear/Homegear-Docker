#/bin/bash

if ! [ "$(ls -A /etc/homegear)" ]; then
	cp -R /etc/homegear.config/* /etc/homegear/
fi

if ! [ "$(ls -A /var/lib/homegear)" ]; then
	cp -R /var/lib/homegear.data/* /var/lib/homegear/
fi

service homegear start
tail -f /var/log/homegear/homegear.log
