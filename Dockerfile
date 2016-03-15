FROM ubuntu:14.04
#if you are in china, use this source
#COPY source.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y nginx && apt-get clean
COPY nginx.conf /etc/nginx/nginx.conf
COPY home /home
CMD "nginx -g 'daemon off;'"
