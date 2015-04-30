FROM jwilder/nginx-proxy
MAINTAINER Jonas Renggli <jonas.renggli@swisscom.com>

RUN apt-get update \
	&& apt-get install -y vim net-tools procps telnet \
	&& rm -r /var/lib/apt/lists/*

ADD assets/nginx-proxy.conf /etc/nginx/conf.d/nginx-proxy.conf