nginx:
	pkg:
		- name: nginx
		- installed
		
/etc/nginx/nginx.conf
	file.managed:
		- source: salt://nginx/files/nginx.conf
		- tempalte: jinja
		- user: root
		- group: root
		- mode: 644
		
/etc/nginx/conf.d:
	file.managed:
		- name: /etc/nginx/conf.d/vhost.conf
		- source: salt://nginx/conf.d/vhost.conf
		- user: root
		- group: root
		- mode: 644
	cmd.run:
		- name: mkdir -p /var/log/nginx
		- unless: test -d /var/log/nginx