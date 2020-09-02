FROM nginx:1.13.8-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf

ENV API_HOST=api

RUN mkdir /scripts
WORKDIR /scripts
COPY start.sh /scripts/start.sh
