---
tags:
  - m
  - 3te_Klasse
---
![[Lineare S]]
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

6.45)
a)
$$\int \frac{x}{(x^2+1)^2} \, dx;u=x^2+1 $$
$$\frac{du}{dx}=2x⇒dx=\frac{1}{2x}*du$$
$$\int \frac{x}{u^2}* \frac{1}{2x} \, du=\int \frac{1}{u^2}* \frac{1}{2} \, du = \frac{1}{2}*\int u^{-2} \, du = \frac{1}{2}* \frac{u^{-1}}{-1}+c $$
$$\int  \frac{x}{(x^1+1)^2} \, dx = -\frac{1}{2}* \frac{1}{x^2+1}+c$$
c)
$$\int \frac{\cos x}{\sin^2x} \, dx ;u=\sin x$$
$$dx=\frac{du}{\cos x}$$
$$\int \frac{\cos x}{u^2}* \frac{1}{\cos x} \, du= \int  \frac{1}{u^2} \, du= \int u^{-2}* \,   $$
$$ \frac{\cos x}{\sin^2 x}*dx= - \frac{1}{\sin(x)}+c$$
![[Lineare Substitution]]