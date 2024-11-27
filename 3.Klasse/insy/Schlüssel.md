---
tags:
  - 3te_Klasse
  - insy
---
> Attribut zur eindeutigen Unterscheidung von Einträgen einer Tabelle

- Schlüsselkandidat
	- Attribute aus denen man einen eindeutigen Schlüssel ertellen kann ein Schlüssel kann auch aus mehreren Attributen zussmaen gsetzt werden. 
- [[Primärschlüssel]]

### Primary Key

<mark style="background: #FFB8EBA6;">eindeutige</mark> Identifizierung (unterscheidungf) der Einträge einer Tabelle
Jede Tabelle hat einen PK →not null, unique
### Foreign Key

die Funktion eines Fremdschlüssels (Foreign Key) ist die Verbindung von Tabellen
Ein FK bezieht sich immer auf den PK einer anderen Tabelle
Ein FK und der PK auf den er sich bezieht müssen denselben  Datentyp haben
![[Schlüssel 27-11-2024-45.excalidraw]]
bei Optionalität kann die Spalte mit dem FK auch leer sein.

n:m Beziehung
"Lehrer unterrichten Schüler"
![[Schlüssel 27-11-2024-58.excalidraw]]
→ Kann nicht in 2 Tabellen abgebildet werden
Eine n:m Beziehung muss mit einer Zwischentabelle aufgelöst werden.
in 2 1:n-Beziehungen
![[Schlüssel 27-11-2024-47.excalidraw]]
2 "Krähenfüße" → 2 Fremdschlüssel in der Zwischentabelle