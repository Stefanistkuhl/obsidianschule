---
tags:
  - 3te_Klasse
  - insy
---
[[3kl insy]]
- Enwurf eines Datenmodells
- Überlegungen welche Daten wie gespeichert und organisiert werden sollen 

> 3 Schichten 

1.Ansi 3- Schichtenmodel

- externe Ebene
	- Anwenderprograme
	- Benutzeroberfläche
- konzeptionelle Ebene 
	- Festlegen der Datenstruktur ERM (Entity Relationship Model) Tabellen, Attribute
- interne Ebene 
	- interne Organisation der Speicherung der Daten 
		- Laufwerke
		- Pfade
		- Ordner
		- Datein

> Die 3 Ebenen sind getrennt dh die Operationen einer Ebene müssen nichts über die anderen Ebenen wissen

2.Entitiy Relationship Model (ERM)
- Objekte → welche informationen?
- Beziehungen → welche Beziehungen
- Entität 
	- ein <mark style="background: #FFB8EBA6;">Exemplar</mark> einer Person, Waren, nicht-materiellen Gutes über welches Information gespeichert wird.
- logisches Datenmodell 
- Abbild eines Ausschnitts der realen Welt auf eine Datenbank 
- Welche Daten sind notwending und bedeutsam
- Welche Beziehungen besteht zwischen den Objekten meines Datenmodells
Objekte zb
- Schüler
- Einrichtung,Inventar
- Lehrpersonen 
- Handymarke
- Schuhlnummern
- Augenfarbe
Entität
- Herr Laibner 
Beziehung 
- Lehrperson unterrichtet Klasse 
Attribute Lehrperson
- Kürzel (Name, Geb datum)
- Klasse 
	- Raum 
	- Av
Das ERM wird in einem Entity-Relationship-Datengramm graphs festgehalten