---
tags:
  - 2te_Klasse
  - nwt
---
[[Layer 3]]
> Wegfindung von einem Host 

- selbst
	- 127.0.0.0/8  
- lokal 
	- Kommunikation innerhalb des lokalen Netzwerks 
- remote 
	- Kommunikation mit entfernten Netzwerken über das Standard Gateway 

![[DR08-03-2024-13.excalidraw]]
![[DR22-03-2024-14.excalidraw]]
PC-A → PC-B
PC-A Routing Tabelle

| Ziel Netz             | Next Hop |
| --------------------- | -------- |
| 0.0.0.0/0 (unbekannt) | 10.0.0.1 |
|                       |          |
R1 Routing Tabelle

| Ziel Netz   | Next Hop    |
| ----------- | ----------- |
| 10.0.1.0/24 | 172.16.10.3 |
R3 Routing Tabelle

| Ziel Netz | Next Hop |
| --------- | -------- |
| 10.0.0    |          |
