Laborprotokoll

![](Pasted%20image%2020240411212057.png|500.excalidraw.svg)

Unterrichtsgegenstand: NWT1|ZIVK

Jahrgang:              Klasse
Name:                  Name

Betreuer:              Zivk

Übungsdaten:           11.04.2024
Abgabedatum:           11.04.2024

<div style="page-break-after: always; visibility: hidden"> \pagebreak </div>

# Inhaltsverzeichnis

- [[#1. Aufgabenstellung|1. Aufgabenstellung]]
- [[#2. Zusammenfassung|2. Zusammenfassung]]
- [[#3. Vollständige Netzwerktopologie der gesamten übung|3. Vollständige Netzwerktopologie der gesamten übung]]
- [[#4. Übungsdurführung|4. Übungsdurführung]]
	- [[#4. Übungsdurführung#4.1 Unzählige Bilder|4.1 Unzählige Bilder]]
	- [[#4. Übungsdurführung#4.2 Routing Tabellen|4.2 Routing Tabellen]]
		- [[#4.2 Routing Tabellen#4.2.1 Pc 5 zu Server 1|4.2.1 Pc 5 zu Server 1]]
		- [[#4.2 Routing Tabellen#4.2.2 Rückweg|4.2.2 Rückweg]]
		- [[#4.2 Routing Tabellen#4.2.3 Pc 0 zu Server 0|4.2.3 Pc 0 zu Server 0]]
		- [[#4.2 Routing Tabellen#4.2.4 Rückweg|4.2.4 Rückweg]]

<div style="page-break-after: always; visibility: hidden"> \pagebreak 
</div>


## 1. Aufgabenstellung

Statisches Routing in einem großen Netzwerk

## 2. Zusammenfassung

Viele Pfeile zeichnen und Tabellen machen.

## 3. Vollständige Netzwerktopologie der gesamten übung

![](Pasted%20image%2020240411210955.png)


<div style="page-break-after: always; visibility: hidden"> \pagebreak 
</div>

## 4. Übungsdurführung
### 4.1 Unzählige Bilder 
![](Pasted%20image%2020240411212158.png)
![](Pasted%20image%2020240411212204.png)
![](Pasted%20image%2020240411212211.png)
![](Pasted%20image%2020240411212221.png)
![](Pasted%20image%2020240411212228.png)
![](Pasted%20image%2020240411212236.png)
![](Pasted%20image%2020240411212246.png)
![](Pasted%20image%2020240411212252.png)
![](Pasted%20image%2020240411212308.png)
![](Pasted%20image%2020240411212314.png)
![](Pasted%20image%2020240411212321.png)
![](Pasted%20image%2020240411212326.png)


### 4.2 Routing Tabellen 
#### 4.2.1 Pc 5 zu Server 1

PC1 Tabelle 

| Ziel Netz | Nexthop          |
| --------- | ---------------- |
| 0.0.0.0/0 | 10.0.0.25.254/24 |

Router 9 Tabelle

| Ziel Netz    | Nexthop          |
| ------------ | ---------------- |
| 10.0.26.0/24 | 10.0.0.24.253/24 |
#### 4.2.2 Rückweg

Server1 Tabelle

| Ziel Netz | Nexthop        |
| --------- | -------------- |
| 0.0.0.0/0 | 10.0.26.254/24 |

Router12 Tabelle

| Ziel Netz    | Nexthop          |
| ------------ | ---------------- |
| 10.0.25.0/24 | 10.0.0.24.254/24 |

#### 4.2.3 Pc 0 zu Server 0

Pc0 Tabelle

| Ziel Netz | Nexthop       |
| --------- | ------------- |
| 0.0.0.0/0 | 10.0.1.254/24 |
Router0 Tabelle

| Ziel Netz   | Nexthop       |
| ----------- | ------------- |
| 10.0.4.0/24 | 10.0.2.253/24 |

Router1 Tabelle

| Ziel Netz   | Nexthop      |
| ----------- | ------------ |
| 10.0.4.0/24 | 10.03.253/24 |
#### 4.2.4 Rückweg

Server0 Tabelle

| Ziel Netz | Nexthop      |
| --------- | ------------ |
| 0.0.0.0/0 | 10.04.254/24 |
Router2 Tabelle

| Ziel Netz   | Nexthop      |
| ----------- | ------------ |
| 10.0.1.0/24 | 10.03.254/24 |
Router1 Tabble

| Ziel Netz   | Nexthop      |
| ----------- | ------------ |
| 10.0.1.0/24 | 10.02.254/24 |
### 4.2 Zusatzaufgabe

Server0 zu Server1



