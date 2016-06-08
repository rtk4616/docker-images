#!/bin/sh
htpasswd -cb /etc/nginx/.htpasswd $USERPAD $PASSWDPAD
nginx
