[[😖Mathiger]] [[🥲2te Klasse]] #m #2te_Klasse 
[[komplexe-zahlen-quadratische-funktionen-logarithmen-übung]]
### <mark style="background: #FFB8EBA6;">Formern</mark>
##### algeraische Normalform (Komponenform)
$$\huge{z=a+b*j}$$
##### trigonometrische form
$$\huge{z=r*(\cos(φ)*j*\sin(φ))}$$
###### Versorform
$$\huge e^{j*\phi}=\angle\phi → z=r*\angle\phi={z=r*e^{j*φ}}$$
##### Exponentialform
$$\huge{z=r*e^{j*φ}}$$
###### eulersche Formel 

$$\huge e^{j*\phi}=\cos(\phi)+j*\sin (\phi)$$


##### Wie man auf r und φ kommt
$$\huge{r=|z|=\sqrt{ Re²+Im^2 }}$$
$$\huge{φ=\tan^{-1}\left( \frac{Im}{Re} \right)}$$
### <mark style="background: #FFB8EBA6;">umwandlung der formen</mark>

> a > 0 → Zeiger im 1. Quadranten 

$$\phi = \tan^{-1}(\frac{b}{a})$$

 > a < 0 → Zeiger im 2. oder 3. Quadranten 

$$\phi = \tan^{-1}(\frac{b}{a})+180°$$
$$a=r*\cos(\phi)$$
$$b=r*\sin(\phi)$$
> Wenn im 4. Quadranten 360° dazuaddieren
#### bsp für umwandeln#

a) $$z_{1}=3+2j$$
$$r=\sqrt{ a^2+b^2 }=\sqrt{ 3^2+2^2 }=\sqrt{ 13 }=3.61$$
$$\tan \phi =\frac{2}{3}→\phi = \tan^{-1}(\frac{2}{3})=33,7°$$
Polarform:
$$z=\sqrt{ 13 }*(\cos((33,7°)+j*\sin(33,7°))$$
Exponentialform:
$$z=\sqrt{ 13 }*e^{j*33,7°}$$
man muss nur auf auf ϕ und r kommen dann kann man, einfach beide formen ohne problem aufschreiben 
b)
$$z_{2}=4j$$
$$r=\sqrt{ 0^2+4^2 }=4$$
ϕ ist 90° da bei der Zeigerdarstellung es nur auf der y achse nach oben geht wäre es -4j wäre ϕ 180° weil es dann nur runtergehen würde 
$$z=4*(\cos(90°)+j*\sin(90°))=4*e^{j*90°}$$
c)
a < 0 also 2ter oder 3ter Quadrant also 180 addieren 
$$z_{3}=-3+2j$$
$$r=\sqrt{ -3^2+2^2 }=\sqrt{ 13 }$$
$$\phi = \tan^{-1}=\frac{2}{3}+180°=-33,7°+180°=146,3°$$
$$z_{3}=\sqrt{ 13 }*(\cos(146.3°)+j *\sin (146.3°))=\sqrt{ 13 }*e^{j*146.3°}$$
### <mark style="background: #FFB8EBA6;">Rechnen mit der Polarform</mark> 

#### Multiplizieren
$$z_{1}*z_{2}=r_{1}*r_{2}*(\cos(\phi_{1}+\phi_{2})+j*\sin(\phi_{1}+\phi_{2}))=r_{1}*r_{2}*e^{j*(\phi_{1}+\phi_{2})}$$
> Beträge werden multipliziert und Winkel werden addiert
#### Dividieren
$$\frac{z_{1}}{z_{2}}=\frac{r_{1}}{r_{2}}*(\cos(\phi_{1}-\phi_{2})+j*\sin(\phi_{1}-\phi_{2}))=\frac{r_{1}}{r_{2}}*e^{j*(\phi_{1}-\phi_{2})}$$

> Beträge werden dividiert und Winkel werden subtrahiert
#### Potenzieren
$$z^n=r^n*e^{j*(\phi*n)}$$

> Beträge werden potenziert und Winkel werden multipliziert
#### 1. Quadrant
```math
||{"id":380113209060}||

\huge{z=1+j}
\huge{Re=1,Im=1}
\huge{r=|z|=\sqrt{ 1^2+1^2 }=\sqrt{ 2 }}
φ=\tan^{-1}(  \frac{1}{1})=\frac{\pi}{4}
```
![](DR13-02-2024-34.excalidraw.svg)
#### 2. Quadrant
```math
||{"id":314893559138}||

\huge{z=-\frac{1}{2}+\frac{\sqrt{ 3 }}{2}*j}
\huge{Re =-\frac{1}{2},Im=\frac{\sqrt{ 3 }}{2}}
\huge{φ=\tan^{-1}(\frac{\frac{\sqrt{ 3 }}2{}}{-\frac{1}{2}})}=\tan^{-1}(-\sqrt{ 3 })=-\frac{\pi}{3}
\huge{φ=180°-60°}
```
Das grüne ist das was rauskommt nach der Berechnung mit dem Tanges, aber stimmt noch nicht, deswegen muss man es von 180 abziehen.
![](DR13-02-2024-59.excalidraw.svg)

#### 3. Quadrant
```math
||{"id":1155394750579}||

\huge{z=-3-5*j}
\huge{\mathrm{Re}=-3,Im=-5}
\huge{φ=\tan{^{-1}(\frac{-5}{-3})}=\tan{^{-1}(\frac{5}{3})}=59,04°=1,03}
\huge{φ=180°+59,04°}
\huge{φ=1,03°+\pi}
```
![](DR13-02-2024-18.excalidraw.svg)
#### 4. Quadrant
```math
||{"id":781006515927}||

\huge{z=4-4*j}
\huge{Re=4,Im=-4}
\huge{φ=\tan^{-1}(\frac{\sqrt{ 4 }}{4})=\tan^{-1}(-1)=-\frac{\pi}{4}}
\huge{2*\pi-\frac{\pi}{4}=\frac{7}{4}*\pi}
```
![](DR13-02-2024-15.excalidraw.svg)
#### 2 Ausnahmen
```math
\mathrm{Re}=0
||{"id":1629106989282}||

\huge{z=-2*j}
\huge{φ=\frac{3}{2}*\pi=270°}
\huge{z=2*j}
\huge{φ=\frac{\pi}{2}=90°}
```
