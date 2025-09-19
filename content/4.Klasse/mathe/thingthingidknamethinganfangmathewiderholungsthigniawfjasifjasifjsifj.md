---
tags:
  - m
  - 4te_Klasse
---
![](https://i.imgur.com/7qucA93.png)
`![](https://i.imgur.com/JmbaNlA.png)`
![](https://i.imgur.com/dWpwBCV.png)
i)
änderungsrate geht runter also ändert es sich weniger, dh nimmt ja immer noch zu
ii)
volumen des becks was im intervall [1;2] angefüllt wird
iii)
im intervall [0;4] das volumen im tank in m^3
$$
\int (1-3x)^3 \, dx 
$$
Substitution:
$u=1-3x$
$u'=\frac{du}{dx}=-3$
$dx=\frac{du}{-3}=-\frac{1}{3}du$

$$-\frac{1}{3}\int {u}^3 \, du =-\frac{1}{3}*\frac{u^4}{4}+C =\frac{-u^4}{12}+C=-\frac{(1-3x)^4}{12}+C$$
c) 
$$\int \sqrt{ 1-x } \, dx $$
Substitution:
$u=1-x$
$u'=\frac{du}{dx}=-1$
$dx=\frac{du}{-1}=-du$
$$-\int u^\frac{1}{2} \, du = -\frac{2}{3}*u^\frac{3}{2}+C$$
Rücksubstitution:
$$-\frac{2}{3}*(1-x)^\frac{3}{2}=\frac{-2*\sqrt{(1-x)}}{3}=-\frac{2}{3}*(1-x)*\sqrt{ 1-x }$$

f)
$$\int (2t-x)^2 \, dx $$
Substitution:
$u=2t-x$
$u' = \frac{du}{dx} -1$
$dx=\frac{du}{-1}=-du$

$$-\int u^2 \, ux =-\frac{u^3}{3}+C$$
Rücksubstitution:
$$-\frac{1}{3}*(2t-x)^3+C$$

6.78a)
$$\int \frac{2}{2+x} \, dx $$
Substitution:
$u=2+x$
$dx=du$
$$2*\int \frac{1}{u} \, du =2*\ln |u|+C$$
Rücksubstitution:
$$2*\ln|2+x|+C$$

$$\int_0^4 (\frac{x}{3}-3)^2 \, dx $$
Substitution:
$u=\frac{x}{3}-3$
$u'=\frac{du}{dx}=\frac{1}{3}dx=3du$
$$ 3\int_{0}^{4} du = 3* \frac{4}{3} = \left(  \frac{x}{3}-3 \right)^3 = 22.32 $$

Partielle integrtion wiederholungslop

$$ \int  u*v' \, dx=u *v - \int u'*v \, dx  $$

6.50 a)
$$\int x * \cos x \, dx = x* (- \sin x)- \int 1* (-\sin x) \, dx  $$
x = u
cos x = v'
= $$x * \sin x + \cos x +c$$

b)
$$\int t *\sin(2t)  \, d = t * \left[ - \frac{1}{2} \cos(2t) \right] - \int 1* \left[  - \frac{1}{2} \cos(2t) \right] \, dt $$
c)
$$\int t * \cos \frac{t}{5} \, dt = t * 5*\sin \frac{t}{5} - \int 5* \sin \frac{t}{5} \, dt $$
d)

$$\int x * c^x* \, dx = x*e^x - \int e^x \, dx = x* e^x - e^x +c = e^x(x-1)+c$$
6.51
a)
$$\int_{-1}^{1}  \, dx $$