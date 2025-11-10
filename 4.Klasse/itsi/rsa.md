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


[RSA (explained step by step) – CrypTool](https://www.cryptool.org/en/cto/rsa-step-by-step/)
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

### Sicherheit von RSA

bestimme cleartest aus public key und ciphertext
key len 4096  bit

- RSA Problem
	- $(n,e),c → n$
		- schwer, da diskrete potenz aus $m^e(modn)$ eigenfaktoren
			- dh die e-te wurzel modulo n ziehen ist schwer

- RSA Schlüsselproblem
	- bestimme private key aus public key
	- schwer, da $n=p*q$ → einwegfunktion für großes $p*q$
		- dh fakotrisierenn großer zahlen ist schwer

#### Low Exponent Attack
zb 
$$p=5,q=11→n=5$$
$$e=3$$
$$m=2$$
$$c=m^e(modn)=2^3=8$$
⇒ $m=\sqrt[3]{ 8 }$ dh keine modulo rechnung erforderlich
shit zu klein weil nd mal mod geused

#### textbook-rsa
ist deterministisch (vorhersagbar dh gleiche clear text führen zu gleichen chipertexten. 
Angreifer rät m, verschlüsselt und vergleicht mit abgefangen c
lösung: random padding bytes