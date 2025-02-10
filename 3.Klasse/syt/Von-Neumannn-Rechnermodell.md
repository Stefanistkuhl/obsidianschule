---
tags:
  - 2te_Klasse
  - syt
  - syt_info
---

John von Neuman beschrieb 1945 das Konzept eines <mark style="background: #FFB8EBA6;">universellen Rechners</mark>,dh eines Rechners, dessen Struktur unabhängig vom bearbeiteten Problem ist. Der Rechnet besteht aus 4 Werken, die bis heute in Computern verwendet werden:

- <mark style="background: #FFB8EBA6;">Rechenwerk</mark>
	- Führt Arethmetische und logische Operationen durch
- <mark style="background: #FFB8EBA6;">Steuerwerk</mark>
	- Interpretiert Programme und steuert deren Abfolge
- <mark style="background: #FFB8EBA6;">Arbeitsspeicher</mark>
	- Speichert Programme und Daten, welche für das Rechen und Steuerwerk zugänglich sind.
	- Ist in Zellen gleicher Größe geteilt, die durch fortlaufende Nummern ("Adressen") bezeichnet werden.
- <mark style="background: #FFB8EBA6;">Ein/Ausgabewerk</mark>
	- Steuert Ein und Ausgabe von Daten.
	- Kommuniziert mit Anwender und Peripheriegeräten

![](DR28-02-2024-18.excalidraw.svg)

- <mark style="background: #FFB8EBA6;">Registertypen</mark>
	- <mark style="background: #FFB8EBA6;">Arbeitsregister:</mark> Nur mit Dateninden Arbeitsregistern können direkte logische Operationen durchgeführt werden. Die Länge des Registers legt die größte Zahl fest, die der Prozessor in einem einzelen Schritt verarbeiten kann. 32-Bit Prozessoren können als größte Zahl 2^32 = 4.294.967.296 verarbeiten.
	- <mark style="background: #FFB8EBA6;">Befehlszähler</mark> (instruction Pointer): Beinhaltet die Adresse des nächsten auszuführenden Befehls. Die Länge des Registers legt die max. Größe des adressierbarem Arbeitsspeichers fest. Mit 32Bit kann die Arbeitsspeicher von 2^32 = 4GB angesprochen werden.
	- <mark style="background: #FFB8EBA6;">Befehlsregister:</mark> Beinhaltet den aktuellen Maschienenbefehl.

![](Mikroprozessoren.excalidraw.svg)