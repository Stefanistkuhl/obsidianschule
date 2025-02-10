---
tags:
  - 3te_Klasse
  - insy
---
Unter Normaliseurng eines realtionalen Datenbankmodells versteht man die Aufteilung von Attributen in mherere realtionen (Tabellen) mit hilfe der Normalisierungsregeln und deren Normaformen, sodass eine Form entsteht, die keine vermidbaren Redundanzen enthält.
Ziele der Normalisierung
- Deseitigung von Redundanzen
- Vermidung von Anomalien (funktionelle und transitive Abhähihkeiten)
- erstelllung eines klar strukturierten Datenbankmodells


| Normalform | Test                                                                                                                | Abhilfe                                                                                                                                                                                            |     |
| ---------- | ------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --- |
| 1.NF       | Relation sollte keine mehrwertigen Attribute haben                                                                  | Neue Relation für jedes mehrwertige Attribut                                                                                                                                                       |     |
| 2.NF       | Bei Relationen mit zussamengesetzten PK sollte kein Attribut von einem Teil des Schlüssels funktional abhängig sein | Zerlegung, neue Relation für jeden Teil des Schlüssels mit den abhängigen Attributen. (Achtung: Beziehung zum PK der ursprünglichen Relation und allen abhängigen Attributen muß erhalten bleiben) |     |
| 3.NF       | Kein nicht-Schlüsselattribut sollte von einem anderen Nicht-Schlüsselattribut funktinal abhängigsein                | Zerlegung, neue Relation mit den Nicht-Schlüsselatributen und ihren abhängigen Attributen                                                                                                          |     |
[[1.Normalform]]
[[2.Normalform]]
[[3.Normalform]]
