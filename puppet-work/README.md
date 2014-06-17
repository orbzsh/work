puppet
===
master
```
puppet cert --list
puppet cert -s (hostname)
```

client
```
puppet agent  --test --server (server hostname)  --verbose
```