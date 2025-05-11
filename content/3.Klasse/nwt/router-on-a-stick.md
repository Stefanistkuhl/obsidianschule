---
tags:
  - nwt
  - 3te_Klasse
---
1. auf physischen Schnitstelle subinterfaces für vlans anlegen und ips obvi
2. Trunk link vom Switch zum Router
3. fertig

Settings für die geräte 
R1
- int g0/0/1
	- no shut
- int g0/0/1.10 (subinterface maachen (auto an weil logische schnitstelle))
	- encapsulation dot1q 10 (10 == vlan id)
	- ip address 192.168.10.1 255.255.255.0
- int g0/0/1.20 
	- encapsulation dot1q 20
	- ip address 192.168.20.1 255.255.255.0
- int g0/0/1.99 
	- encapsulation dot1q 99 (native)
	- ip address 192.168.99.1 255.255.255.0
- S1
- vlan 10 
	- vlan 20
	- vlan 99
	- int range f0/1, fa0/5
		- switchport mode trunk 
		- switchport trunk native vlan 99
		- switchport trunk allowed vlans 10,20,99
	- int fa0/6
		- switchport mode access 
		- switchport acces vlan 10