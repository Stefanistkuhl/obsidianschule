---
tags:
  - m
  - 3te_Klasse
---
https://www.geogebra.org/m/btcyzymc
### integral basics
[vid](https://www.youtube.com/watch?v=0vdcvDg-Lkk)
Bei der Integra rechnugn geht es um Flächenberechnung
![](https://i.imgur.com/7WBpfKF.png)
Das in Blau is das Integral hier wäre es 
$$f(x)=x$$
$$\int_{0}^{4} x\, dx $$
Fläche ohne Integral berechnen
$$A= \frac{1}{2}*4*4=8$$

Mit ingegral Rechnung
> Hochzahl wird 1 größer davor kommt ein bruch aus der zahl die vor dem x steht durch die Hochzahl

$$\int_{0}^{4} x\, dx= |_{0}^{4} \frac{1}{2}*x^2$$
Grenzen einsetzen
$$\frac{1}{2}*4^2- \frac{1}{2}*0^2=8$$

bsp 2
$$f(x)=4x^2$$
$$\int_{0}^{1}4x^2  \, dx $$
$$\int_{0}^{1}4x^2  \, dx = |_{0}^{1} \frac{4}{3}* x^3 $$
einsetzen
$$\frac{4}{3}* 1^3 -\frac{4}{3} *0^3 = \frac{4}{3}$$

![](https://i.imgur.com/j2ol8SL.png)
this shid basicly sagt, dass beim Einsetzen man in die abgeleitet func die obeere gerenze für x einsetzt und dasn minus unten
#### mit klammeren und sigma linearner substitution

> geht nur wenn in der klammer eine linear funktion ist also nur ein x und kein x^2 zb
> außerhalb der klammer dürfer nur faktoren stehen kein x
> hinten ein + x wär fine weil integral aufteilen

a)
$$\int 2*(3x+5)^8 \, dx $$
gleich vorgehen wie normaler weise, aber die innere ableitung der klammer mit dem unteren teil des bruches multiplizieren also die klammer ableiten hier wäre es 3
das hier jz ist die stammfunktion des oberen unbestimmen integrals deshalb das `+c` am ende
$$\frac{2}{9*3} *(3x+5)^9+c$$
b)
$$\int (7x-2)^4 \, dx $$
![](https://i.imgur.com/WPlxVGC.png)
$$\frac{1}{5*7} *(7x-2)^5+c$$
c)
$$\int  -8 *(1-4x)^3 \, dx $$
![](https://i.imgur.com/bCV3dCx.png)
$$\frac{-8}{4*(-4)}* (1-4x)^4+c$$
![](https://i.imgur.com/1TbZlfI.png)
$$\frac{1}{2}* (1-4x)^4+c$$
c)
$$\int \frac{6}{(x-2)^5} \, dx $$
umschreiben, dass es eine negative potenz statt einem bruch hat
$$\int 6*(x-2)^{-5} \, dx $$
$$\frac{6}{-4*-1}* (x-2)^{-4}+c$$
$$-\frac{3}{2} * \frac{1}{(x-2)^{4}}+c$$
$$-\frac{3}{2*(x-2)^{4}} +c$$
### mit grenzen
$$\int_{0}^{3} \frac{5}{2}*(x+1)^4  \, dx $$
$$\frac{2.5}{5*1} *(x+1)^5+c$$
$$\frac{1}{2} *(x+1)^5+c$$
$$|_{0}^{3} \frac{1}{2} *(x+1)^5+c$$
$$ \frac{1}{2} *(3+1)^5-\frac{1}{2} *(0+1)^5=511.5$$

#### gebrochen rationale funtionen integrieren

das der einfachste fall wenn zahl oben x unten den shit enf umschreiben
$$\int \frac{2}{x^4} \, dx $$
$$\int 2*x^{-4} \, dx $$
dann ez clap
wenn nur x und hoch 1 dann noch mehr ez clap weil zahl davor \* ln |x|
$$\int  \frac{3}{x} \, dx $$
$$\int 3* \frac{1}{x} \, dx $$
$$3* \ln | x | +c$$
jz ynails besipeile
##### summe oben
$$\int \frac{x^2-4+x }{x^2}\, dx $$
bruch zu meheren brüchen machen
$$\int  \frac{x^2}{x^2}- \frac{4}{x^2}+ \frac{x}{x^2} \, dx = \int   1-4*x^{-2}+x*x^{-2}+ \frac{1}{x}\, dx$$
$$x- \frac{4}{-1}*x^{-1}+ \ln |x|+c $$
##### summe unten
> immer wenn bei einem bsp die summe im nenner ist checken ob der zähler eine ableitung des nenners ist

das hier ist ein sepialfall wo der zähler die ableitung des nenners ist
$$\int  \frac{2x}{x^2+4} \, dx $$
$$\ln|x^2 +4|+c$$
$$\int  \frac{6x}{x^2-9}\, dx $$
![](https://i.imgur.com/g5BtIOJ.png)
oben steht ja 3\*2x
$$3* \int \frac{2x}{x^2-9} \, dx $$
$$3* \ln |x^2-9|+c$$
kaka fall
$$\int \frac{x^2}{(x+3)^2} \, dx $$
substiuieren
$$u=x+3$$
zusammenhang zw u und x benötigt → auf x umformen
$$x=u-3$$
das dann in den zähler geben

jetzt brauchen dx und du einen zussamenhang
dafür u ableiten statt u' ist die mathematische schreibweise dafür
$$\frac{du}{dx}$$
for some fucking reason
$$u'= \frac{du}{dx}=1$$
dann auf dx umstellen
$$\frac{du}{dx}=1 |*dx $$
$$du = dx$$
weil es gleich ist einfach dann unten dx mit du erstetzen
$$\int \frac{(u-3)^2}{u^2} \, du $$
binomische formel auflösen
$$\int \frac{u^2-6u+9}{u^2} \, du $$
dann wieder wie vorher in einzele brüche und die dann integrieren
$$\int  \frac{u^2}{u^2}- \frac{6u}{u^2}+\frac{9}{u^2} \, du $$
$$\int 1- \frac{6}{u}+ 9*u^{-2} \, du $$
integrieren
$$u- 6*\ln|u|+ \frac{9}{-1}*u^{-1}+c$$
verinfachen (optional enf geogebra)
![](https://i.imgur.com/NGmPMp8.png)
![](https://i.imgur.com/2OqUIUM.png)
ln|x| in geogebra schreibt man `ln(abs(x))`
erm das stimmt nd tho
![](https://i.imgur.com/jMOlsFC.png)

#### mehr substitution
![](https://i.imgur.com/IPo6b2e.png)
parteille ingegration wird benutzt wenn man ein produkt an funktionen hat zb x\*e^x 
substitution hier benuztzt weil verschalchtelte funktion
subsitution imma wenn verschachtelt
$$\int_{0}^{1} \frac{e^{\sqrt{ x }}}{\sqrt{ x }}  \, dx $$
$$u= \sqrt{ x }$$
bevor jz alles von x mit u ersetzen die grenzen in u einstezen und so anpassen
$$u= \sqrt{ 0 }=0$$
$$u= \sqrt{ 1 }=1$$
neue grezen 0 1
du/dx bilden → u ableiten
$$\frac{du}{dx}= \frac{1}{2*\sqrt{ x }}$$
auf dx umstellen
$$\frac{du}{dx}= \frac{1}{2* \sqrt{ x }}|*dx$$
$$du = \frac{1}{2*\sqrt{ x }}*dx | *2*\sqrt{ x }$$
$$2*\sqrt{ x }*du=1*dx$$
alles im ingegral ersetzen
$$\int_{0}^{1} \frac{e^u}{\sqrt{ x }} *2 * \sqrt{ x }\, du $$
vereinfachen
![](https://i.imgur.com/Nc99Rbg.png)
$$\int_{0}^{1} 2*e^u  \, dx $$
integrieren e bleibt gleich
$$|_{0}^{1}2*e^u $$
$$2*e^0=2$$
$$2*e^1=2e$$
subtrahieren
$$2e-2$$
![](https://i.imgur.com/MrKzyHr.png)
wenn es keine grezen gäbe müsse noch wieder eingesetzt (rück substiuiert) werden und ein + c am ende
#### partielle integration
wird immer angewendet wenn multiplikationen da sind
→ bruch in ein produkt umschreiben
$$\int  \frac{(\ln(x))^2}{x^2} \, dx $$
$$\int ( \ln(x))^2* \frac{1}{x^2}  \, dx $$
in potenz unschreiben
$$\int ( \ln(x))^2* x^{-2}  \, dx $$
jetzt bereit um die parteille integration anzuwenden
jetzt das eine u und das andere v' nennen das mit u muss abgeleitet werden und das mit v' integriert werden
$$u= (\ln(x))^2$$
$$u'= 2* \frac{\ln(x)}{x}= 2*(\ln(x))* \frac{1}{x}$$
$$v'=x^{-2}$$
$$v= -x^{-1}$$
dann u mit v multiplizieren und mit dem integral von v mal u' subtrahieren
$$u*v- \int v*u' \, dx $$
![](https://i.imgur.com/mkYoTx2.png)
#### partial bruch zerlegung
ziel einne summe aus meheren kleinen brüchen zu finden
und am schluss das integral anwemden
![](https://i.imgur.com/RT2YbNc.png)

$$ \int_{1}^{2} \frac{-2x-2}{x^2 +7x +12}  \, dx $$
nullstellen
![](https://i.imgur.com/uvHhcGQ.png)
$$\frac{-2x*-2}{(x+3)*(x+4)}$$
imten im bruch ist es ist immer x - nustlle in klammer \* nächster nullstelle etc 
wär aber zb vor der größten pozetz eine 3 oda ein dander fakor würde es auch vor der klammer stehen
jz die actual partial bruch zerlegungng
da wird der buch aufgeteilt
in 2 brücher zerlgen, weil 2 nulstellen
wir wissen nicht, was im zähler ist, weslab enf A oder B direkt hingeschreiben wird
$$\frac{-2x-2}{(x+3)*(x+4)} =\frac{A}{x+3} + \frac{B}{x+4} |*(x+3)*(x+4)$$
das mit dem nenne des adnerne multiplizieren
$$-2x-2= A*(x+4)+B*(x+3)$$
2 gleichungen machen indem nullstellen eingesetzt werden
![](https://i.imgur.com/pOQs8Rf.png)
$$\int_{1}^{2} \frac{4}{x+3}-\frac{6}{x+4}  \, dx $$
dass jz ez clap ingegrieren und den faktor vor den bruch holen
$$\int_{1}^{2} 4* \frac{1}{x+3} - 6* \frac{1}{x+4}  \, dx $$
hier ableitung ist was im zähler bei beiden vom nenner
$$|_{1}^{2} 4* \ln |x+3| - 6* \ln | x+4 |$$
grezen einsetzen
$$4*\ln(5)-6*\ln(6)-(4*\ln(4)-6*\ln(6))=-0.201$$
### flächenberechnung

### bewegungsaufgaben