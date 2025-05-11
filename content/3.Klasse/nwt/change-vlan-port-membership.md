---
tags:
  - nwt
  - 3te_Klasse
---
There are a number of ways to change VLAN membership: 

- re-renter switchport access vlan vlan-id command 
- use the no switchport-access vlan  to place the interface back in VLAN 1 

Use the show vlan brief or show interface fa0/18 switchport commands to verify the corret VLAN assosiciation 

alle ports in vlan 99 moven
int fa0/1
int range fa/0/0 - 24
switchpower access vlan 99