FROM debian:bullseye

EXPOSE 3306

COPY ./tools/script.sh /tmp/script.sh

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y vim mariadb-server && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	chmod +x /tmp/script.sh && \
	chown -R mysql:mysql /etc/mysql/mariadb.conf.d && \
	chmod -R 755 /etc/mysql/mariadb.conf.d

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["/tmp/script.sh"]