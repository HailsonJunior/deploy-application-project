FROM nginx:latest

RUN apt update -y && apt upgrade -y

LABEL description="Webserver"

ADD ./pagina-web /usr/share/nginx/html

VOLUME /usr/share/nginx/html
