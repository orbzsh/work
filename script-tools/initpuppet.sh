#!/bin/env bash
#by orbs
ubuntu(){
	read -p "This is master:(1:master |2:client)" CS
	if [ $CS -eq 1 ];then
		apt-get -y install puppetmaster ntp
	else
		apt-get -y install puppet ntp
	fi
}

centos(){
	cd /tmp
	wget http://yum.puppetlabs.com/el/5/products/i386/puppetlabs-release-5-6.noarch.rpm
	rpm -Uvh puppetlabs-release-5-6.noarch.rpm
	read -p "This is master:(1:master |2:client)" CS
	if [ $CS -eq 1 ];then
		yum -y install puppet-server ntp
	else
		yum -y install puppet ntp
	fi
}

read -p "OS is:(1:ubuntu|2:centos)" OS
if [ $OS -eq 1 ];then
	ubuntu
else
	centos
fi
