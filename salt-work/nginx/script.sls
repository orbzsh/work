nginx:
	cmd.run:
		- name: mkdir -p /tmp/script
		- unless: test -d /tmp/script
	file.managed:
		- name: /tmp/script/init-nginx.sh
		- source: salt://nginx/script/init-nginx.sh
		- user: root
		- group: root
		- mode: 755
	cmd.run:
		- name: sh /tmp/script/init-nginx.sh