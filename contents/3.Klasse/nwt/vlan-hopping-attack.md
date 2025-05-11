---
tags:
  - nwt
  - 3te_Klasse
---
configures the host to act like a swtich and access other vlans wihtout a router

If a attack negotiaes to get a trunk connetion to a switch they could have permissions to get access to the managment vlan.
This can be achieved by using DTP which should be disabled anyway

this can also be done by double tagging a ethernet frame on the native vlan since the native vlan removes the first vlan tag but then the next switch only sees the secound vlan tag thefore giving access to another vlan
this is not a practical attack which like never happens at all since the native vlan is never ever used for clients nor is there a trunk connection to a client connection