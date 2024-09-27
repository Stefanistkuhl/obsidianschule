---
tags:
  - nwt
  - 3te_Klasse
---

- Store and forward methode 
	- standart methode kollisionen werden nicht weiter geleitet und fehlerhafte packet werden verworfen erhöht die Latzenz aber
	- ließt ganzen frame und checkt im Trailer die Frame Check Sequence für CRC errors korrupte frames werden verworfen
	- Puffern
		- ingress interface 
- Cut through switchting
	- sofort weiterleiten nachdem man die MAC addresse aus dem Ethernet Header gelesen hat also nur bis zu Src/dst also nur die ersten 6 Bytes
		- Problem: cheksummen werden nicht kontroliert
		- kollisoinen die nach den ersten 6 bytes passieren werden nicht erkannt, da es schon weitergeleitet wurde
- Fragment-free switchting 
	- mit der Weiterleitung beginnen nach 64 Bytes (minimale Frame größe) Late collusions werden nicht verhindert (kollisoinen nach der mind größe)