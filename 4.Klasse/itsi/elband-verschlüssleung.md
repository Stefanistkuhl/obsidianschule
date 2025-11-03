---
tags:
  - 4te_Klasse
  - itsi
  - crytography
---
![](elband-verschl%C3%BCssleung%2003-11-2025-48.excalidraw.svg)

Bsp:
known plaintext angriff
p = 11
q =3
m = 7 klartext
(B,c)=(5,8) chipertext
k=?

m^-1: $7*8=56=1 mod(11)$ 
$$k=c*m^{-1}=8*8=9 (mod(11))$$

Chosen Ciphertext Angriff

- Angrefer will (B,c) entschlüsseln
- wählt zufällig $m'$ und berechnet $(B',c')=(g^{b'},A^{b'}*m)$ 
- löst sich $(B*B',c*c')$

entschlüsseln:
$$(B*B',c*c')=(g^{b}*g^{b'},A^{b}*m* A^{b'}*m')=(g^{b+b'},A^{b+b'}*m*m')$$ mehr mathe und dann passiert was