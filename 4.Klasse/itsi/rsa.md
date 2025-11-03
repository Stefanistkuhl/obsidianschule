---
tags:
  - 4te_Klasse
  - itsi
  - crytography
---
> Rivest-Shamir-Adleman
> 1977
> bis heute noch wichtigstests asymetrisches verschlüsselung verfahren

bei großen zahlen ohne primzahlen zrk rechnen geht nd weil ✨mathematik✨
#### Schlüssel erzeugen
Bob wählt zufällig zwei Primzahlen p,q berechnet $n=p*q$
bob berechent $d \in\mathbb{N}$ so, dass $d*e=1$  $mod(p-1)(q-1)$
Bob pub key (n,e)
bob priv key d
#### Verschlüsselung
Alice will Nachricht an Bob verhschlüsseln → holt sich Bobs pub key (n,e) berechnet $c=m^e mod(n)$ schickt c an Bob

#### Entschlüsseln
Bob berechnet $m=c^d mod(n)=(m^e)^d=m^{e^d} mod(n)=m$
(^{e\*d}= 1 mod (p-1)(q-1) (priv key))