FROM dedistack/nginx:php-fpm

MAINTAINER DediStack <support@dedistack.io>

RUN apk -U add \
    wget \
    && rm -rf /var/cache/apk/*

RUN wget http://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz \

RUN tar -zxvf dokuwiki-stable.tgz \
    && rm -f dokuwiki-stable.tgz \
    && mv dokuwiki*/* /var/www/

COPY nginx.conf /etc/nginx/nginx.conf
COPY dokuwiki.vhost /etc/nginx/sites-enabled/dokuwiki

EXPOSE 80 443

CMD ["nginx"]
