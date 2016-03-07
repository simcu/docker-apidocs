FROM alpine
RUN apk add --update nginx && \
 	rm -rf /var/cache/apk/*
COPY nginx.conf /etc/nginx/nginx.conf
ADD home.tar /
CMD nginx -g "daemon off;"