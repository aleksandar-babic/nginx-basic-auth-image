FROM nginx:alpine

COPY files/default.conf /etc/nginx/conf.d/default.conf
COPY files/.htpasswd /etc/nginx/.htpasswd
