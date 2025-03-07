---
tags:
  - nwt
  - 3te_Klasse
---
> Ziel den ersten Hop (Std Gateway) redundant zu machen

![](First%20Hop%20Redundancy%20Protocols%2007-03-2025-55.excalidraw.svg)
Wenn die Hellos von R1 ausfallen dann geht R2 davon aus, dass R1 ausgefallen ist wird zum Aktiven Router und R2 sendet die Packte und switch ändert port auf den die virt mac adresse ist.
Router holt nicht die rolle per default zurück man kann die prio einstellen

Protokolle mit der Funktionalität:
- Hot Standby Router Protocol (HSRP)
- Hot Standby Router Protocol for IPv6 (HSRP)
- Virtual Router Redundancy Protokol version 2 (VRRPv2)
- Virtual Router Redundancy Protokol version 3 (VRRPv3)
	- ip v6
- Gateway Load Balancing Protocol (GLBP)
- Gateway Load Balancing Protocol for Ipv6 (GLBP)