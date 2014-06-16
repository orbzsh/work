#!/bin/env bash
#by orbs
init_pcre() {
	yum -y install git gcc gcc-c++ readline-devel openssl-devel wget
	cd /usr/local
	wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.33.tar.gz
	tar xvf pcre-8.33.tar.gz
	cd pcre-8.33
	./configure --prefix=/usr/local/pcre-8.33
	make
	make install
}
init_nginx() {
	mkdir /usr/local/nginx
	cd /opt/
	wget  http://openresty.org/download/ngx_openresty-1.7.0.1.tar.gz
	tar xvf  ngx_openresty-1.7.0.1.tar.gz
	cd ngx_openresty-1.7.0.1
	./configure  --prefix=/usr/local/nginx  --with-pcre=/usr/local/pcre-8.33  --with-luajit \
	--with-http_stub_status_module --with-http_realip_module 
	make
	make install
}

init_pcre
init_nginx