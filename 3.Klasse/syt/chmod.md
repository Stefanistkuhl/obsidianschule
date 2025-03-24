---
tags:
  - 2te_Klasse
  - syt
  - syt_info
---
> chmod == changemode
> chomd ist ein command zum rechte ändern

geht nach UGO → Ultra Greatword (User, Group, Other)

```sh
chmod u-r 
# entfernt dem nutzer lese rechte
chmod g+w 
# gibt einer gruppe schreibrechte
```
command mit zahlen [[rechte-buchstaben-bedetugungen-aishfsudhgudfghufgh|zahlen bedeutungen]]
```sh
chmod 750
# man addiert 7 für den user → 4 +2 +1 → rwx
# group → 4+0+1 → r-x
# other → 0+0+0 → ---
```