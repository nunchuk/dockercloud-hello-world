############################################################ 
# Dockerfile to build Hello image 
# Based on Alpine:3.5
############################################################

FROM registry.cn-beijing.aliyuncs.com/nunchuk/alpine:latest

RUN apk --update add nginx php5-fpm && \
    mkdir -p /run/nginx

ADD www /www
ADD nginx.conf /etc/nginx/
ADD php-fpm.conf /etc/php5/php-fpm.conf
ADD run.sh /run.sh

ENV LISTEN_PORT=80

EXPOSE 80
CMD /run.sh