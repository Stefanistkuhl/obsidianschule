---
tags:
  - nwt
  - 3te_Klasse
---
- dhcp starvation attack
	- taking all of the dhcp pool with flooding the pool and therfore starving the dhcp server
	- create a Dos for connecting cleints tools usch as Gobbler which creates bogus DHCP descovery messages with bogus MAC addresses
- dhcp spoofing attack
	- a rouge dhcp server connteted to the network providing false ip configuration such as assiging a false gateway or a dns server
	- protect by assigined on the switch on what port a dchp server is and only allow dhcp traffic from that port