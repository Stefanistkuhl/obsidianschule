Laborprotokoll

![[Pasted image 20240411212057.png]]

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
	- [[#4. Übungsdurführung#4.1 Schritt 1|4.1 Schritt 1]]
		- [[#4.1 Schritt 1#4.1.2 Schritt 2|4.1.2 Schritt 2]]
- [[#5. Vollständige Konfigurationsdateien|5. Vollständige Konfigurationsdateien]]
- [[#6. Abbildungsverzeichnis|6. Abbildungsverzeichnis]]

<div style="page-break-after: always; visibility: hidden"> \pagebreak 
</div>


## 1. Aufgabenstellung

Statisches Routing in einem großen Netzwerk

## 2. Zusammenfassung

Viele Pfeile zeichnen und Tabellen machen.

## 3. Vollständige Netzwerktopologie der gesamten übung

![[Pasted image 20240411210955.png]]


## 4. Übungsdurführung
### 4.1 Unzählige Bilder 
![[Pasted image 20240411212158.png]]
![[Pasted image 20240411212204.png]]
![[Pasted image 20240411212211.png]]
![[Pasted image 20240411212221.png]]
![[Pasted image 20240411212228.png]]
![[Pasted image 20240411212236.png]]
![[Pasted image 20240411212246.png]]
![[Pasted image 20240411212252.png]]
![[Pasted image 20240411212308.png]]
![[Pasted image 20240411212314.png]]
![[Pasted image 20240411212321.png]]
![[Pasted image 20240411212326.png]]


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
| 10.0.1.0/24 | 10.04.254/24 |