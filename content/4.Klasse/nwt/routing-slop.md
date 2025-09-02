---
tags:
  - nwt
  - 4te_Klasse
---
[[dynamic-routing]]
### Classifiying Routing Protcols
- Purpose and stuff
	- discovery of remote nws
	- matian (tf does that mean) up to date routing information
	- choose best path to dst
	- find new best path if other one not avaliable
- Classful
	- include submask info in the routing updates
	- cant support varaible len subnet masks (VLSMs) adn classless interdomain routing (CIDR)
	- create problems in discontigous networks
	- [Introduction of Classful IP Addressing - GeeksforGeeks](https://www.geeksforgeeks.org/computer-networks/introduction-of-classful-ip-addressing/)
	- refresh or sum
	- not used
- Classless
	- does not include submask info in the routing updates
	- acutally gets used