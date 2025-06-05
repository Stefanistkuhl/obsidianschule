---
tags:
  - 3te_Klasse
  - insy
---
![](wpa-4-way-handshake%2005-06-2025-51.excalidraw.svg)
1) Authentizierer schickt einmal gültige zufalls zahl
2) Suplicant (client) schickt auf eine einmak gültige zufallszahl

PTK (pairwise transient key):
- für verschlüsselte komm zw ap und client
- PMK (pairwise master key)
	- Passwort mit mathematischen funktionen verändert bei wpa2 personal
	- jeder kennt dem der im netz is deshalb gibt es den PTK
- MAC Authenticator
	- (AA=Authenticator Address)
- SA (Mac  Addrese vom Suplicant)
- Anonce
- Snonce

- GTK = Group Temporal Key
	- wird von AP generiert
	- für Komm zw Ap und allen Clients