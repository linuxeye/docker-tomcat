# vi: ft=dockerfile
ARG TOMCAT_VERSION=11-jdk21
FROM tomcat:${TOMCAT_VERSION}


### change ubuntu to www-data
###
RUN set -eux; \
	userdel www-data; \
	groupmod --new-name www-data ubuntu; \
	usermod -l www-data -d /home/www-data -m ubuntu


# persistent / runtime deps
RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
	gosu \
	; \
	rm -rf /var/lib/apt/lists/*


###
### Runtime arguments
###
ENV MY_USER=www-data
ENV MY_GROUP=www-data
ENV TOMCAT_VERSION="version.sh 2>&1 | grep 'Server number' | awk '{print \$NF}'"


###
### Create directories
###
RUN set -eux \
	&& mkdir -p /data/webroot/default \
	&& chown ${MY_USER}:${MY_GROUP} /data/webroot/default


###
### Set timezone
###
RUN set -eux \
	&& if [ -f /etc/localtime ]; then rm /etc/localtime; fi \
	&& ln -s /usr/share/zoneinfo/UTC /etc/localtime


###
### Copy files
###
COPY ./data/server.xml /usr/local/tomcat/conf/server.xml
COPY ./data/docker-entrypoint.d /docker-entrypoint.d
COPY ./data/docker-entrypoint.sh /docker-entrypoint.sh


###
### Ports
###
EXPOSE 8080


###
### Entrypoint
###
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["catalina.sh", "run"]