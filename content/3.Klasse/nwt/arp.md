---
tags:
  - 2te_Klasse
  - nwt
---

> Protokoll als Verbindung zw [[datalink-layer2|Layer 2]] und [[layer-3]]

- Client → Router 
	- SRC:10.0.0.1 
	- DST:10.255.255.254 

Client ARP-Table
1. Nachschauen in der ARP-Tabelle 
2. Who is "10.255.255.254" → ARP-Request 
	1. Brodcast → L2-DSt FF:FF:FF:FF:FF:FF 
	2. Jeder, der nicht 10.255.255.254 ist verwirft, das Packet 
3. I am "10.255.255.254" → ARP-Reply 
	1. L2 → SRC: 12:12:12 DST: AA:AA:AA
4. Speicher Mac und Ip in der Tabelle 

| Ip             | Mac      |
| -------------- | -------- |
| 10.255.255.254 | 12:12:12 |

![](DR01-03-2024-22.excalidraw.svg)

[[standard-gateway]]