salt-work
===
salt-master
```
vim /etc/salt/master
interface: 0.0.0.0
file_roots:
  base:
    - /srv/salt/
service salt-master start
salt-key -L
salt-key -a (minion hostname)
```

salt-minion
```
vim /etc/salt/minion
master: (master ipaddr)
service salt-minion start
```

```
OS:CentOS 6.5 64
network:eth0,eth1

admin.test.com(ssh login|salt master)

cdn.test.com(file storage|cdn server)

ha1.test.com(haproxy master)
ha2.test.com

web1.test.com(nginx web server)
web2.test.com

db1.test.com(mysql|redis)
db2.test.com
```