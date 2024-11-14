---
tags:
  - 3te_Klasse
  - itsi
---
- priviligierte Benutzer
	- unix: root (build in)
	- Windows: Administrator (build in)
	- um Konfigurationen am System durchzuführen
		- services configuriren instlairen
		- nutzer erstellen/verwalten
- unpriviligierte Benutzer
	- um Anwendungen auszuführen
	- müssen manuell erstellet werden
	- könnne durch priviligierte Nutzer (privielge escalation)
- Service Nutzer
	- haben nur die Rechte für bestimmte Dienste
		- zb HTTP-Server

Nutzeraufteilung
- personenbezogene Nutzer
	- gehören zu <mark style="background: #FFB8EBA6;">genau einer</mark> natürlichen Person
	- vorteile
		- nur eine Person kennt das Passwort
		- eindeutige Zuordnerkeit (wir können eindeutig zuordnern wer was gemacht hat)
- geteilte Nutzer
	- Vorteile
		- weniger Lizenzkosten
		- PW wissen mehre Personen falls  es vergessen wird surely das is ein vorteil
	- Nachteile
		- kann Missbraucht werden
		- gleichzeitige Nutzung nicht möglich

- Wie können Nutzer zussamengefasst werden?
	- mit Gruppen