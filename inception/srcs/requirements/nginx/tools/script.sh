#!/bin/sh

openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=42seoul/CN=jeongrol@student.42seoul.kr" -keyout /etc/ssl/private/nginx.pem -out /etc/ssl/certs/nginx.crt

exec nginx -g 'daemon off;'