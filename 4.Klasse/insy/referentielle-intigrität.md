---
tags:
  - insy
  - 4te_Klasse
---
Zu jedem Eintrag in einer Fremdschlüsselspalte muss passender Eintrag in der verbundenden Tabelle existieren oder es existiert kein Frendschlüsselverweis

Problemfälle:
löschen oder ändern von Einträge in der kindertabelle
`ON DELETE CASCADE/SET NULL/NO ACTION/ SET DEFAULT`
`ON UPDATE ON DELETE CASCADE/SET NULL/NO ACTION/ SET DEFAULT`

`CASCADE` → weiterreichen der änderung/löschung
`SET NULL` → Fremdschlüssel wird `NULL` gesetzt
`NO ACTION` → Verweigerung der Operation
`SET DEFAULT` → Den definierten Standartwert eintragen