nginx:
	pkg:
		- name: nginx
		- installed
		
/usr/local/nginx/nginx.conf
	file.managed:
		- source: salt://nginx/files/nginx.conf
		- tempalte: jinja
		- user: root
		- group: root
		- mode: 644