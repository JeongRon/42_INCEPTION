FROM debian:bullseye

COPY ./tools/script.sh /tmp/script.sh
COPY ./conf/default /etc/nginx/sites-enabled/default

RUN apt-get update -y && \
    apt-get install -y nginx openssl gettext vim && \
    chmod +x /tmp/script.sh && \
    chmod +x /etc/nginx/sites-enabled/default

ENTRYPOINT ["/tmp/script.sh"]
