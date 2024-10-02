---
tags:
  - 3te_Klasse
  - insy
---
> logisches Datenmodell 

### Beziehungen zwischen Entitäten
Entitäten können zueinander in Beziehung stehen um deren Verhalten genauer zu beschreiben 

zb Kunde kauft Produkt 
Leherperson unterrichtet Klasse

Beziehungen haben eine Typ und müssen immer inbeide Richtungen betrachtet werden..

### Beziehungstypen
- 1:1
	- Eine Entität eines Typs hate eine Beziehung zu genau einer Entität eines anderen Typs 
		- zb Person hat genau eine Sozialversicherungsnummer → 1
			- eine Soz Nr gehört genau einer Person ← 1
			- ![[Entity Relationship-Model 02-10-2024-09.excalidraw]]
- 1:n
	- Eine Entität hat Beziehungen zu mehreren Entitäten eines anderen Typs in der anderen Richtung besteht eine Einfachbeziehung
		- zb Eine Klasse besteht aus mehreren Schüler:innen, ein/e Schüler:in besucht genau eine Klasse
			- ![[Entity Relationship-Model 02-10-2024-58.excalidraw]]
- n:m
	- Eine Entität eines Typs hat Beziehungen zu mehreren Entitäten eines anderen Typs und umgekehrt 
		- zb Lehrperson und Klasse 
			- Eine Leherperson unterrichtet mehrere Klasssen, eine Klasse wird von mehreren Lehrpersonen unterrichtet.
			- ![[Entity Relationship-Model 02-10-2024-14.excalidraw]]