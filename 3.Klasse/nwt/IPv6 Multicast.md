---
tags:
  - nwt
  - 3te_Klasse
---
> Kein arp und brodcast oda so benötigt weil simply multicast
> alles layer 3 keine layer 2 brodcasts mehr benötigt
 
ff02::1 ... alle Ipv6 Hosts
ff02::2 ... alle Ipv6 Router
ff02::1:2 ... alle DHCPv6-Server
ff0E::FB ... alle DNSb6-Server
ff0E::101 ... alle NTP-Server
ARP → ICMPv6 (ND,DAD)
DHCP → ICMPv6
![](IPv6 Multicast 31-01-2025-36.excalidraw.svg)