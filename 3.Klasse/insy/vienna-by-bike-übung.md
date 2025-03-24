---
tags:
  - 3te_Klasse
  - insy
---
# 1. Datenmodell (Textdatei)

### Entitätstypen und Entitäten

* **Kunde**: Eine Person, die ein Fahrrad mieten oder reservieren kann.
* **Fahrrad**: Ein Fahrrad, das vermietet oder reserviert werden kann.
* **Ausleihe**: Eine Transaktion, bei der ein Kunde ein Fahrrad mietet.
* **Tarif**: Die Kosten für die Ausleihe eines Fahrrads.

### Attribute

* **Kunde**:*
    * KundenID (eindeutige Nummer)
    * Name
    * Adresse
    * Telefonnummer
    * E-Mail-Adresse
    * Ausweisnummer
* **Fahrrad**:*
    * FahrradID (eindeutige Nummer)
    * Hersteller
    * Typ
    * Farbe
    * Größe
    * Beschreibung
* **Ausleihe**:*
    * AusleiheID (eindeutige Nummer)
    * Kunde (verknüpft mit Kunde)
    * Fahrrad (verknüpft mit Fahrrad)
    * Ausleihdatum und -uhrzeit
    * Rückgabedatum und -uhrzeit (optional)
    * Tarif (verknüpft mit Tarif)
* **Tarif**:*
    * TarifID (eindeutige Nummer)
    * Dauer
    * Preis

### Beziehungen

- Ein Kunde kann mehrere Fahrräder ausleihen (1:n Beziehung zwischen Kunde und Ausleihe)
- Ein Fahrrad kann von verschiedenen Kunden ausgeliehen werden (1:n Beziehung zwischen Fahrrad und Ausleihe)
- Jede Ausleihe hat einen Tarif (1:1 Beziehung zwischen Ausleihe und Tarif)
- **Ein Kunde kann mehrere Fahrräder reservieren (1:n Beziehung zwischen Kunde und Fahrrad mit dem Attribut "Reservierungsdatum")**
- **Ein Fahrrad kann von verschiedenen Kunden reserviert werden (1:n Beziehung zwischen Fahrrad und Kunde mit dem Attribut "Reservierungsdatum")**
## 2. ER-Diagramm (draw.io)

[ER-Diagramm als Bild einfügen]

Das ER-Diagramm visualisiert das oben beschriebene Datenmodell. Es zeigt die Entitätstypen als Rechtecke und die Beziehungen zwischen ihnen als Linien mit entsprechenden Kardinalitätsangaben (1:1, 1:n). Die Reservierung wird als Beziehung zwischen Kunde und Fahrrad mit dem Attribut "Reservierungsdatum" dargestellt.

## 3. Tabellen

* **Kunde**
    * KundenID (PK)
    * Name
    * Adresse
    * Telefonnummer
    * E-Mail-Adresse
    * Ausweisnummer
* **Fahrrad**
    * FahrradID (PK)
    * Hersteller
    * Typ
    * Farbe
    * Größe
    * Beschreibung
* **Ausleihe**
    * AusleiheID (PK)
    * KundenID (FK)
    * FahrradID (FK)
    * Ausleihdatum
    * Rückgabedatum
    * TarifID (FK)
* **Tarif**
    * TarifID (PK)
    * Dauer
    * Preis
* **Kunde_Fahrrad_Reservierung (zusätzliche Tabelle für die Reservierung)**
    * KundenID (FK)
    * FahrradID (FK)
    * Reservierungsdatum

## 4. Normalisierung

Die Tabellen sind bereits in der 3. Normalform (3NF) und erfüllen somit die grundlegenden Normalisierungsregeln. Das bedeutet, dass es keine redundanten Daten gibt und alle Attribute von den Schlüsseln der Tabellen abhängen.

![](vienna%20by%20bike%20bsp%2019-02-2025-09.excalidraw.svg)
