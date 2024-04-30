---
tags:
  - 2te_Klasse
  - syt
  - syt_elektro
---

# npn Transistor
![[DR12-02-2024-24.excalidraw]]
Strom/Spannungen auch eingezeichnet

> Prinzip: mit einem relativ kleinen Basisstrom kann ein ein vergleichsweiser großer Kollektorstrom gesteuert werden.

Ab einer Ube ~ 0.7V Schaltet der Transistor durch.
→ 1. Kirchhof: Ib+Ic=Ie
Ic = B * Ib B...Gleichstromrichtung  
→ 2. Kirchhof
Uce=Ube+Ucb
###### Ersatzschaltbild:
![[DR12-02-2024-24_0.excalidraw]]


### Emitter Schaltung
Vi = 10 ... 300
Vu = ... 5000
W1 = 0,1 ... 10kΩ (Eingangswiederstand)
W2 =  1000kΩ (Ausganswiederstand)

l...länge in m
A... Querschnitt in m²
$$ ρ... Spezifischer Wiederstand = \frac{Ω*mm²}m{} $$



Kennlinienfeld:
![[DR22-01-2024-08.excalidraw]]

Emitterschaltung:
![[DR22-01-2024-30.excalidraw]]Gleichspannung wird von Wechselspannung entkopelt und mit den Wiederständen eingestellt.
Ka ohmesgesetz und Kirchhof anweden und so idk irgenwo im Buch is das Bsp



![[DR19-02-2024-29.excalidraw]] > Up ... Spannung am nichtinvertierenden Eingang  > Un ... Spannung am nichtinvertierenden Eingang
> Ua ... Ausgangspannung
> UD = Up-Un ... Differenzspannung
> Vd = Ua/Ud ... Diffenzverstärkung
> Bandbreite ... < = 100 MHz
> Ausgangswiederstand ... ra ca 30 bis 100Ω (sollte klein sein)
> Eingangswiederstand ... re ca 10^6 bis 10^12Ω  

> Allgemein: wird der Ausgang an einem der beiden Eingänge zurückgeführt ("Rückkoplung, Loopback),  Operationsverstärker den Ausgang (Ua) so zu regeln, dass die Differenz = Spannung (UD) nicht wird.

##### Nicht invertierende Verstärker
![[DR21-02-2024-37.excalidraw]]

über den Spannungsteiler Rv-R1 und ein Teil der Ausgangsspannung an den invertierten Eingang zurückgeführt, mit dem Ziel Uq = 0V

##### Intertierende Verstärker

##### Spannungsfolger (I)

![[DR21-02-2024-45.excalidraw]]

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
