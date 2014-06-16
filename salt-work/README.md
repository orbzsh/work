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