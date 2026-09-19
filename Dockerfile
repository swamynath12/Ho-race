FROM nginx
MAINTAINER Swamy
LABEL This is my racing app docker image
EXPOSE 80
COPY Index.html /usr/share/nginx/html/
