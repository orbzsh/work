#!/bin/env bash
#by orbs
init-salt(){
	yum -y install python-setuptools gcc gcc-c++ git wget
	cd /opt
	git clone https://github.com/pypa/pip.git
	cd pip
	python setup.py build
	python setup.py install
	mkdir /root/.pip/
	echo '''
	[global]
	index-url=http://pypi.v2ex.com/simple
	''' >/root/.pip/pip.conf
}

yum-salt(){
	yum -y install python-setuptools gcc gcc-c++ git wget
	cd /opt
	wget -c http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
	rpm -ivh epel-release-6-8.noarch.rpm
	read -p "Enter number:(1:master,2:minion)"  number
	if [ $number -eq 1 ];then
		yum -y install salt-master
	else
		yum -y install salt-minion
	fi
}

yum-salt