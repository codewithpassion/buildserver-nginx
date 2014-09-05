#!/bin/sh
DIR=${PWD#}

mkdir -p $DIR/log

docker run -d -p 8080:80 -v $DIR/sites-enabled:/etc/nginx/sites-enabled -v $DIR/log:/var/log/nginx codewithpassion/buildserver-nginx nginx
