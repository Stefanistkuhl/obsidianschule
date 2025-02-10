---
tags:
  - 3te_Klasse
  - itsi
---
> In 128bit blöcken Verschlüsselt die Datei wird aufgeteilt in die Blöcke und die werden dann verknüpft

1. Daten in 128 Bit Blöcke unterteilt 
2. Je nach Schlüssellänge unterschiedlich viele Verschlüsselungsrunden
3. Jeder Block wird mit Roundkeys verknüpft 
4. Jeder Block wird mit dem nächsten verknüpft

-  Verfügbare Schlüssellängen
	- 128 bit 
		- 10 Runden
	- 256 bit (aktueller Standart)
		- 14 Runden
	- 512 bit
	- je länger der Schlüssel desto Sicherer
	- Schlüssel wird in Roundkeys unterteilt
![](AES 27-09-2024-25.excalidraw.svg)