---
tags:
  - 2te_Klasse
  - syt
  - syt_elektro
---
#2te_Klasse #syt

![](DR19-02-2024-29.excalidraw.svg) > Up ... Spannung am nichtinvertierenden Eingang  > Un ... Spannung am nichtinvertierenden Eingang
> Ua ... Ausgangspannung
> UD = Up-Un ... Differenzspannung
> Vd = Ua/Ud ... Diffenzverstärkung
> Bandbreite ... < = 100 MHz
> Ausgangswiederstand ... ra ca 30 bis 100Ω (sollte klein sein)
> Eingangswiederstand ... re ca 10^6 bis 10^12Ω  

> Allgemein: wird der Ausgang an einem der beiden Eingänge zurückgeführt ("Rückkoplung, Loopback),  Operationsverstärker den Ausgang (Ua) so zu regeln, dass die Differenz = Spannung (UD) nicht wird.

##### Nicht invertierende Verstärker
![](DR21-02-2024-37.excalidraw.svg)

über den Spannungsteiler Rv-R1 und ein Teil der Ausgangsspannung an den invertierten Eingang zurückgeführt, mit dem Ziel Uq = 0V

##### Intertierende Verstärker

##### Spannungsfolger (I)

![](DR21-02-2024-45.excalidraw.svg)

Durch die Rückkoplung gilt:
- Vu~1,bzw ua~uc
- Eingangsformel: re ist groß
	- Quelle wird kaum belastet
- Ausgangswiederstand: ra ist klein,
	- der durchgang darf belastet werden (oder mit einer "niederohmigen" last)
- Anwendung 
	- Puffer zw Sensor und Mikrocontroller 
		- "Wer misst misst Mist"
	- Impetanzwandler
	- Signalübertragung
		- zb Bei Netzwerk verbindungen zb Kabel ja nur 100m max aba zb Pc zu server der weiter als 100m is ja zb Switch oda so daszwischen und die Kabel zw jedem Aktiven komponenten > 100m weil jedes ding ja verstärkt