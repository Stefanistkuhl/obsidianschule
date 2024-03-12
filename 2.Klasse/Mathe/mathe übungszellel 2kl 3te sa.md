---
tags:
  - 2te_Klasse
  - m
---
[[Dumme Scheitelform kake bei Qu fkt]]
4)
$$z_{1}=7-2j,z_{2}=3+\angle_{}40°,z_{3}=e^{j*\frac{\pi}{6}}$$
dinger in sämtliche formen umwandeln:
```math
||{"id":744537520871}||

z_{1}=7-2j
r=\sqrt{ 7²+2² }=\sqrt{ 53 }
\phi=\arctan(\frac{-2}{7})+360°=344°
z_{1}=\sqrt{ 53 }*(\cos(344°)+j*\sin(344°))=\sqrt{ 53 }*e^{j*344°}
z_{2}=3*\angle 40
z_{2}=3*e^{j*40°}=3*(\cos(40°)+j*\sin(40°))
a=r*\cos(\phi)=2.29
b=r*\sin(\phi)=1.92
z_{2}=2.29+1.92*j
z_{3}=e^{j* \frac{\pi}{6}}
z_{3}=\cos(\frac{\pi}{6})+j*\sin(\frac{\pi}{6})
a=\cos(\frac{\pi}{6})=\frac{\sqrt{ 3 }}{2}
b=sis(\frac{\pi}{6})=0.5
z_{3}=\frac{\sqrt{  3}}{2}+0,5j
```
a)
```math
||{"id":231348030228}||
z_{1}+z_{2}-z_{3}
(7-2j)+(2.29+1.92j)-(\frac{\sqrt{ 3 }}{2}+0,5j)
7-2j+2.29+1.92j-\frac{\sqrt{ 3 }}{2}-0,5j=8.4-0.58j
```
b)
```math
||{"id":177913198601}||

z_{1}*z_{2}+z_{3}
(\sqrt{ 53 }*e^{j*344°}*3*e^{j*40°})+\frac{\sqrt{  3}}{2}+0,5j
\sqrt{ 53 }*3*e^{j*(344+40)}=21.84*e^{j*384}
a=24.84*\cos(384)=22.69,b=24.84*\sin(384)=10,1
23.29-10.1j-0.87+0.5j=22.82-9.6j
```

c)
```math
||{"id":1389357644736}||

\frac{z_{2}-z_{3}}{z_{1}}
\frac {3.29+1.92*j-(0.86+0,5j)}{\sqrt{ 53 }*e^{j*344°}}
\frac {3.29+1.92*j-0.86-0,5j}{\sqrt{ 53 }*e^{j*344°}}
\frac {2.43-1.42j}{\sqrt{ 53 }*e^{j*344°}}
r=\sqrt{ 2.43²+1.42² }=2.81
\phi=\arctan(\frac{1.42}{2.43})=30°
z_{2-3}=2.81*e^{30}
\frac {2.81*e^{30}}{\sqrt{ 53 }*e^{j*344°}}=20.45*e^{-314}
-314+360=46°
20.45*e^{j*46°}
```
c)
![[DR11-03-2024-08.excalidraw]]
5)
Um ein rechteckiges Schwimmbecken von 40m länge und 30m Breite soll einen an allen Seiten breite Rasenfläche angelegt werden, deren Flächenihalt 5-mal so groß wie der des Schwimmbeckens sein soll. Berechne die äußeren Abmessungen der Rasenfläche.
![[DR10-03-2024-13.excalidraw]]
```math
||{"id":332475751997}||

A_{Rasen}=5*(30*40)=6000m^2
6000=(40+2x)*(30*2x)=1200+80x+60x+4x²=4x²+140x+1200=6000|-6000
4x²+140x-4800=0|:4 
x²+35x-1200=0 → -\frac{35}{2}\pm \sqrt{ (\frac{35}{2})²+1200 }=x_{1}=-56.31,x_{2}=21.3
Schwimmbecken_{länge} = 40+2*21,31=82,62m
Schwimmbecken_{breite}=30+2*21,31=142.62m=30+2*56,31=72.62m
82,62*72,62=6000
```
A: Das Schwimmbecken ist 82m lang und 72m breit

11)
Ein Stoff hat eine Halbwertszeit von 136 Minuten. Berechne die Zerfallskonstante lambda, die prozentuellel Abhanme pro Minute und wenn und noch 1% des Stoffes vorhanden ist.

```math
||{"id":1506362045842}||
T \frac{3}{2}=136=\frac{\ln(2)}{\lambda}|:\lambda
136*\lambda = \ln(2)|:136
\lambda=\frac{\ln(4)}{136}=0,0050966704
e^{-\lambda}-1=-0,005083704=0,5\%
\frac{1}{100}=e*^{-\lambda*t}|\ln
\ln(0,001)=-\lambda*t|:-\lambda

\frac{\ln(0,001)}{(-\lambda)}=t=903,56
```
Prozentuelle Abnahme pro Zeiteinheit beträgt 0,5% und nach 903,56 Minuten sind nur noch 1% des Stoffes Vorhanden.

12)
Im Jahr 2008 war die Fläche Mitteleuropas von rund 5.106ha Wald bedeckt. Nach Schätzungen nimmt der Bestand jährlich um 0,267% zu. Um wie viel Prozent wird die Waldfläche demnach bis zum Jahr 2030 zunehmen? 
Verwende die Formel $$N(n)=N_{0}*(1+p)^n$$ (n: Anzahl der Jahre, p Prozentsatz)
```math
||{"id":1382573524769}||

N(n)=N_{0}*(1+p)^n=N(n)=5106*1,00267^n
N(22)=5106*1,00267^22=5414.486465ha
\frac{5144,5-5106}{5106}=0,06=6\%
```
Die Waldfläche nimmt von 2008 bis 2030 um 6% zu. 

6)
> hälfte von b in die bin formel hauen und (b/2)² addieren und substrahieren

a)
```math
||{"id":352336948265}||

y=2x²+20x-4
2*(x²+10x-2)
2*(x²+10x+5²-5²-2)
2*((x+5)²-27)
2*(x+5)²-54
S(-5|-54)
```

```functionplot
---
title: 
xLabel: 
yLabel: 
bounds: [-10,10,-10,10]
disableZoom: false
grid: true
---
y=2*x*x+20x-4
```

b)
[[Dumme Scheitelform kake bei Qu fkt]]
c)
```math
||{"id":281685829134}||

f(a)=-a²-16a+12
-(a²+16a-12)
8²
-(a²+16a+8²-8²-12)
-((a+8)²-76)
-(a+8)²+76
S(-8|76)
```

e)
```math
||{"id":644761949346}||

y=0,5x²+2x-3
0,5(x²+4x-6)
2²
0,5(x²+4x+2²-2²-6)
0,5((x+2)²-10)
0,5(x+2)²-5
S(-2|-5)
```
