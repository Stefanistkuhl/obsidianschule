---
tags:
  - m
  - 3te_Klasse
---
> Integrieren ist das gegenteil vom Ableiten

$$\int (x+x^2)  \, dx = \frac{x^2}{2}+\frac{x^3}{3}+c$$

Wiederholung Kettenregel
$$f(x)=\sin x^2$$
$$f'(x)=\cos x^2*2x$$
$$\int \cos x^2 *2x \, dx = \sin x^2 +c$$

### Substitutionsverfahren
$$\int    e^{\sin x} \cos x \, dx$$
$$= \int e^u = \int e^u \, du = e^u +e = e^{\sin x}+c $$
#### Substituieren
$$u=\sin x$$
$$\frac{du}{dx}=\cos x$$
$$dx = \frac{dx}{\cos x}$$
##### Probe
$$(e^{\sin x}+c)'= e^{\sin x}*\cos x$$
Bsp:
$$\int \sin x^3 *x^2 \, dx $$
$$=\int \frac{1}{3} \sin(u) \, du = -\frac{1}{3}\cos u +c$$
$$=-\frac{1}{3}\cos(x^3)+c$$
$$u=x^3$$
$$\frac{du}{dx}=3x^2$$
$$dx = \frac{du}{2x^2}$$ 
Bsp:Lineares Substituioren 
$$\int \sin(3x-1) \, dx $$
$$=\int \sin u *x^2* \frac{du}{3x^2} $$
$$\int \frac{1}{3}\sin u \, du = -\frac{1}{3}\cos u +c $$
$$= -\frac{1}{3}\cos(x^3)+c$$
$$u=3x-1$$
$$\frac{du}{dx}=3$$
$$dx=\frac{du}{3}$$

6.38) a)
$$\int \frac{2}{2+x} \, dx $$

6.37) b)
$$\int (3-2x)^4 \, dx $$
c)
$$\int \sqrt{ 1-x } \, dx $$
6.45) a)
$$\int \frac{x}{(x^2-1)^2} \, dx;u=x^2+1 $$
c)
$$\int \frac{\cos x}{\sin^2 x} \, dx; u =\sin x $$