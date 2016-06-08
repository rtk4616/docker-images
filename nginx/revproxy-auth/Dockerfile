FROM nginx:stable-alpine
ADD nginx.conf /etc/nginx/nginx.conf
ADD run.sh run.sh
ENV USERPAD
ENV PASSWDPAD
CMD ["run.sh"]
