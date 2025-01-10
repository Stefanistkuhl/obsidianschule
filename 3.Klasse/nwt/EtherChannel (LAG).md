---
id: EtherChannel (LAG)
aliases: []
tags:
  - nwt
  - 3te_Klasse
---
![[EtherChannel 10-01-2025-26.excalidraw]]

- Vorraussetzungen
	- gleiche Geschw
	- gleicher Duplex
	- gleicher modus (acces oder trunk)
	- gleiches native vlan und vlan acl (access control list)
- Einschränkungen
	-  max 8 verbindungen bündeln (6\*8=48)
	- und 6 bündelungen pro gerät machen
	- weil man hat nur 48 ports zb

Es gibt PAgP und LACP (Link Aggregation contorl protocol)
Am besten selbst configurieren statt PAgP
die protokolle sind zum  verhanlden und senden verhandlungs packete
- PAgP
	- Cisco only
	- On
	- PAgp direrable
	- Auto
- LACP
	- offen
	- on
	- active
	- passive
	- bei verschiedenen verstellern benötigt
![[Pasted image 20250110094005.png]]
[[Configuring EtherChanel]]
