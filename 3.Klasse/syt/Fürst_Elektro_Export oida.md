---
tags:
  - 2te_Klasse
  - syt
  - syt_elektro
---

# npn Transistor
![](DR12-02-2024-24.excalidraw.svg)
Strom/Spannungen auch eingezeichnet

> Prinzip: mit einem relativ kleinen Basisstrom kann ein ein vergleichsweiser großer Kollektorstrom gesteuert werden.

Ab einer Ube ~ 0.7V Schaltet der Transistor durch.
→ 1. Kirchhof: Ib+Ic=Ie
Ic = B * Ib B...Gleichstromrichtung  
→ 2. Kirchhof
Uce=Ube+Ucb
###### Ersatzschaltbild:
![](DR12-02-2024-24_0.excalidraw.svg)


### Emitter Schaltung
Vi = 10 ... 300
Vu = ... 5000
W1 = 0,1 ... 10kΩ (Eingangswiederstand)
W2 =  1000kΩ (Ausganswiederstand)

l...länge in m
A... Querschnitt in m²
$$ ρ... Spezifischer Wiederstand = \frac{Ω*mm²}m{} $$



Kennlinienfeld:
![](DR22-01-2024-08.excalidraw.svg)

Emitterschaltung:
![](DR22-01-2024-30.excalidraw.svg)Gleichspannung wird von Wechselspannung entkopelt und mit den Wiederständen eingestellt.
Ka ohmesgesetz und Kirchhof anweden und so idk irgenwo im Buch is das Bsp



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


> Die beiden Eingänge werden miteinernader verglichen jenachdem welcher der Eingänge ein größeres elektrisches potential hat kippt der Ausgang 

![](DR05-03-2024-10.excalidraw.svg)

Ua max → pos eingang höheres potential
ua min → andersum

- Anwendungen  
	- Digitalisierung eines Pegels
	- Analog Digital Converter (ADC)
		- Paralellverfahren (Fleischwandler)
			- Prinzip:
				- ![](DR05-03-2024-28.excalidraw.svg)
					- Einfaches bsp 
						- ![](DR05-03-2024-55.excalidraw.svg)
	- Invertierender Komperator
		- ![](DR05-03-2024-55.excalidraw.svg)
	- Nicht Invertierender Komperator 
		- ![](DR06-03-2024-50.excalidraw.svg)
# Wechselstrom

- Paramter Sinusförmiger Größen 
	- ![](DR06-03-2024-07.excalidraw.svg)
	- T = jene Zeit, in der 1 vollständige Schwingung stattfindet, bei der das Signal zu wiederholen beginnt.
	- f = Anazahl der vollständigen Schwingungen pro Sekunde zb f = 50hz → T = 0,025 = 25ms
	- U mit dach ... Scheitelwer
	- u(t) ... Momentanwert
	- u(t) = Udach ... sin(ω * t)
	- ω = 2 * Π * p ... Winkelgeschwindigkeit, Kreisfrequenz
	- U= Udach/sqrt(2) ... Effektivwert (Anmerkung: 1/sqrt(2), gilt ausschießlich für sinusförmige Größen)


![](DR06-03-2024-00.excalidraw.svg)

Bsp Netzspannung ("Steckdose")
f = 50hz → 25ms
u(t)=Uspitze * sin(ω * t)
Uspitze = ?

gemessen: U = 230V → Upsitze = sqrt 2 * U → Uspitze ~ 325V
→ u(t) = 325V sin(2Π * 50hz * t)

Bsp Frequenzen: f = 2,4Ghz , 5Ghz, 6Ghz ... Wlan  
f = 2,45 Ghz ... Mikrowelle
f = 8000Mhz - 3,4Ghz ... Handy

Wifi: 
$$f = 2,4Ghz → \lambda=? $$
$$c = \lambda*f $$
$$\lambda = \frac{c}{f}=\frac{3*10⁸}{2,4*10⁹}$$
$$= \frac{3}{2,4}*10m=1,25*10m = 12,5m$$


![](DR18-03-2024-07.excalidraw.svg)
Bsp 
```math
||{"id":1434725607386}||

L=120Hz
Y_{L}=? 
Y_{L}=37,7Ω
Y_{L_{2}}=377Ω
Y_{L_{3}}=3,77kHz
```
![](DR18-03-2024-34.excalidraw.svg)
## Wechselstrom Komponenten
- Ohmscher Wiederstand
	- DC: U=R * I
	- AC: <u>U</u> = R*<u>I</u>
		- U = R * I (effektive Wiederstand)
	- Allgemein: <u>Z</u> R+jx
		- <u>Z</u> ... komplexer Wiederstand, Impedanz
		- R ... Wirkwiederstand (reel)
		- X ... Blindwiederstnad (Imaginär)
	- R → <u>Z</u> R+jx
		- x ~ 0 für
$$R= \frac{\rho*l}{A}$$
l ... länge d. Drahtes
A ... Querschnitt
ρ ... spezifischer Wiederstand des Materieals

[l]=m²
[A]=mm²
[R]=Ω
$$[p]=\frac{\ohm*mm²}{m}$$

![](DR13-03-2024-12.excalidraw.svg)
	- liniendiagramm (ideales R)
		- ![](DR13-03-2024-26.excalidraw.svg)
		- b) 
			- ![](DR13-03-2024-21.excalidraw.svg)
			- ⇒ je größer die Frequenz, desto größter X2 

- kapazität, Kondensator
	- ![](DR20-03-2024-03.excalidraw.svg)
- kapazitiver Blindwiederstnad
	- $$Y_{c}=\frac{1}{\omega* C}\left( =\frac{U}{I} \right),[Y_{c}]=\ohm ⇐⇒B_{c}=-\frac{1}{Y_{C}}=\omega*C [B_{c}]=S$$
	- ![](Drawing 2024-03-20 14.47.49.excalidraw.svg)
	- 
Ohmschwer Wiederstand: R$$\underline{Z}_{R}=R=R\angle 0°$$ 
Blindwiederstand: L $$\underline{Z}_{L}=j*\omega*L=\underline{Z}_{L}\angle{90°}$$
Kapazität: c $$\underline{Z}_{c}=j* \frac{1}{\omega*c}=\underline{Z}_{c}\angle{-90°}$$
Einheiten 
[U]=V
[I]=A
[Z]=[R]=Ω
[L]=H...Henry
[C]=F..Forat
![](DR04-04-2024-45.excalidraw.svg)

![](DR09-04-2024-03.excalidraw.svg)
- Kondensator: $$X_{c}=\frac{1}{\omega C}=\frac{1}{2*\pi*\rho*c}$$
	- dh: f↑ ⇒ Xc ↓
> Anwendung: hohe Frequenzen filtern, tiefe Frequenzen druchlassen = Tiefpass
- Spule $$X_{L}=\omega*L=2\pi*\rho*f*L$$
	- dh f↑ ⇒ XL ↑

> Anwendung: tiefe Frequenzen filtern, hohe Frequenzen druchlassen = Hochpass


