---
tags:
  - medt
  - 3te_Klasse
  - nwt
---
> ports bei Router sind immer per Default aus

- Ips an ports geben und einschalten

```
conf t 
enable secret class 
line con 0 
password cisco 
login 
line vty 0 4 
password cisco 
login 
exit 
service password-encryption 
banner motd $ Unauthorized access prohibited $
do wr mem
```