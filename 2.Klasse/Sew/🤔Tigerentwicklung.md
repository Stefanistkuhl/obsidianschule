---
tags:
  - 2te_Klasse
  - sew
---
2
[[🥲2te Klasse]]
### Flussdiagramm
![[dr_Tu_21_2023_37.excalidraw]]

### Tiktaktoe
- 2 Spieler abwechselnd
- 3x3 Spielfeld
- Ergebnis oder Unentschieden
Array
Wertebereich → 0,1,2
0 → leeres Feld
1 → x am Feld
2 → o am Feld

|0 |0|0|  
|---|---|---|
|0| 0|0|
|0| 0|0|
Leer

|1 |1|1|  
|---|---|---|
|1| 1|1|
|1| 1|1|
x überall

|2 |2|2|  
|---|---|---|
|2| 2|2|
|2| 2|2|
o überall

### Sortieren

Unter einem Sortierverfahren versteht man in der Informatik einen Algorithmus, der dazu dient, ein [Tupel](https://de.wikipedia.org/wiki/Tupel "Tupel") (i. Allg. ein [Array](https://de.wikipedia.org/wiki/Feld_(Datentyp) "Feld (Datentyp)")) zu sortieren. Voraussetzung ist, dass auf der [Menge](https://de.wikipedia.org/wiki/Menge_(Mathematik) "Menge (Mathematik)") der Elemente eine [strenge schwache Ordnung](https://de.wikipedia.org/wiki/Strenge_schwache_Ordnung "Strenge schwache Ordnung") definiert ist („kleiner-gleich“), z. B. die [lexikographische Ordnung](https://de.wikipedia.org/wiki/Lexikographische_Ordnung "Lexikographische Ordnung") von Zeichenketten oder die numerische Ordnung von Zahlen. 
Es gibt verschiedene Sortierverfahren, die unterschiedlich effizient arbeiten bezüglich der [Zeitkomplexität](https://de.wikipedia.org/wiki/Zeitkomplexit%C3%A4t "Zeitkomplexität") (Anzahl der nötigen Operationen) sowie der [Platzkomplexität](https://de.wikipedia.org/wiki/Platzkomplexit%C3%A4t "Platzkomplexität") (zusätzlich zum Eingabe-Array benötigter weiterer [Speicherplatz](https://de.wikipedia.org/wiki/Arbeitsspeicher "Arbeitsspeicher")). Die Komplexität eines Algorithmus wird üblicherweise in der [Landau-Notation](https://de.wikipedia.org/wiki/Landau-Notation "Landau-Notation") dargestellt (s. u. Ausdrücke wie Θ(�⋅log⁡(�))![{\displaystyle \Theta (n\cdot \log(n))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/979b36c5e2530b933de455c443d5c37997b82871) (Theta) oder stilisiertes "Oh", Omega groß, Omega klein). Die Zeitkomplexität hängt bei einigen Sortierverfahren von der anfänglichen Anordnung der Werte im Array ab, man unterscheidet dann zwischen _Best Case_ (bei günstigster „Vorsortierung“), _Average Case_ (Normalfall) und _Worst Case_ (schlechtester Fall ~ die Werte sind „maximal ungünstig vorgeordnet“). Häufig sind zusätzliche Faktoren zu beachten, die Einfluss auf Zeit- oder Platzkomplexität haben, zum Beispiel langsamer Zugriff auf extern liegende Daten, begrenzte Größe des Arbeitsspeichers oder ähnliches.

Bubble Sort
27 4 8 30 31
4 27 8 20 31
4 8 27 20 31
4 8 20 27 31
max suchen
27 4 8 20 31 
27 4 8 20 31
20 4 8 27 31
8 4 20 27 31
4 8 20 27 31

![[DR18-11-2023-21.excalidraw]]

### Bubble Sort

wechselt immer überlappend → nach dem ersten mal die höchste zahl ganz rechts 
zweiter Durchgang 2 höchste 2 rechts
hinterste nummer werden dann ausgelassen weil ja nach jedem druchgang das höchste

zb
2 8 5 3 9 4 1 → 2 < 8 → kein tausch → 8 > 5 tausch etc 
2 5 3 8 4 1 |9
2 3 5 4 1 |8 9
2 3 4 1 |5 8 9
2 3 1 |4 5 8 9
2 1 |3 4 5 8 9
1 |2 3 4 5 8 9

### Merge Sort

halbiert immer array dann fügt zsm aber sortiert davor

![[DR20-11-2023-22.excalidraw]]