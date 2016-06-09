FROM nginx:stable-alpine
RUN apk add -U apache2-utils
ADD nginx.conf /etc/nginx/nginx.conf
ADD run.sh /run.sh
ENV USERPAD=osones
ENV PASSWDPAD=osones
CMD ["/bin/sh", "/run.sh"]
