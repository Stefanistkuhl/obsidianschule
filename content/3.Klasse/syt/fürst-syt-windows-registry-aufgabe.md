---
tags:
  - syt
  - syt_info
  - 3te_Klasse
---
### Teil A: Theoriefragen (Kurzantworten)
1. Was ist die Windows-Registry und wofür wird sie verwendet?
	1. Zentrale,hirachische Datenbank wo die Konfigurationen für Windows und die Instalierten Programme gespeichert sind
2. Nenne die fünf Hauptbereiche (Hives) der Registry und beschreibe jeweils kurz deren Zweck
	1. HKEY_CLASSES_ROOT (HKCR)
		1. informationen über registrierte Dateitypen und deren zuordnung zu programmen
	2. HKEY_CURRENT_USER (HKCU)
		1. speichert benutzerspezifische Einstellungen
		2. zb instalierte Software und Sicherheitseinstellungen
	3. HKEY_LOCAL_MACHINE (HKLM):
		1. Konfigurationen die den Gesamten Computer betreffen und gelten für alle Nutzenden
		2. zb instalierte Software und Sicherheitseinstellungen
	4. HKEY_USERS (HKU)
		1. profileinstellungen für alle Benutzer die sich jemals angemeldet haben
		2. nutzer werden durch eine SID (Sicherheits-ID)
		3. beim anmelden wird der ensprechende key geladen
	5. HKEY_CURRENT_CONFIG (HKCC)
		1. infos über das aktuelle hardwareprofil des systemes
		2. zb hardwarekonfiguration und anzeigeeinstellungen
3. Was ist der Unterschied zwischen einem Schlüssel und einem Wert in der Registry?
	1. jedem Schlüssel wird ein Wert zugewiesen
4. Welche Bedeutung haben folgende Datentypen in der Registry?
	- REG_SZ
		- String
		- für humanreadable werte benutzt wie dateipfade verwendet
	- REG_DWORD
		- "Double word"
		- 32bit int
		- 0 → False; 1 → True
		- für nurmerische einstellungen verwendet
	- REG_BINAR
		- binär daten
		- für flags in programmen verwendet

### Teil B: Praktische Aufgaben (nur in sicherer Testumgebung oder mit Screenshots)
1. Öffne den Registrierungseditor (regedit). Navigiere zu folgendem Pfad und lies den vorhandenen Wert aus: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion
	1. Wie heißt der Schlüssel, der die Windows-Version enthält?
		1. ![](https://i.imgur.com/nClXUIw.png)
		2. `DisplayVersion`
		3. `CurrentMajorVersionNumber`
		4. `CurrentMinorVersionNumber`
	2.  Welcher Wert steht dort?
		1. `22H2`
		2. `10`
		3. `0`
2. Erstelle folgenden neuen Schlüssel in der Registry:
	1. Pfad: HKEY_CURRENT_USER\Software\HTLTest
	2. Neuer Schlüssel: TestKey
	3. Neuer Wert: Name = "Schülername" (Typ: REG_SZ)
3. Mache einen Screenshot davon oder beschreibe die Schritte schriftlich.
	1. ![](https://i.imgur.com/4DBzVmi.png)
	2. Erstellen:
		1. Pfad Öffnen dann auf `SOFTWARE` rechtsclicken → `New Key`
		2. Key Öffnen
		3. Rechtsclick new → String Value
		4. daten angeben
4. Exportiere den erstellten Schlüssel (HTLTest) in eine .reg-Datei. Beschreibe den Aufbau dieser Datei.
	1. Zum exortieren: Rechtsclick → Export → dateiname und speichert ort angeben
	2. ![](https://i.imgur.com/wRsyUJq.png)
		1. Aufbau der Datei:
			1. Windows Registy Version
			2. Pfad des Keys
			3. Key und value

### Teil C: Anwendungsbeispiele (Recherche oder Diskussion)
1. Welche Registry-Pfade sind für den Autostart von Programmen beim Windows-Login relevant?
	1. ![[Pasted image 20250509154638.png]]
		1. Für Benuzyer ist under dem Markierten Pfad eine Liste an apps die mit dem Login gestartet werden.
		2. Mit einem `REG_SZ` wert wird der name der app und der dateipfad der exe die ausgeführt wird angeben
	2. Recherchiere ein Beispiel, wie eine Software bei der Installation Registry-Werte verwendet.
		1. Zb um die Dateiendungs assoziaziation sich selbst zuzuweisen
		2. Zb shareX als beisiel [hier](https://github.com/ShareX/ShareX/blob/64299c0d7ab50900590c27e9361574f8bec2ad5c/ShareX.HelpersLib/Helpers/RegistryHelpers.cs#L41) kann man im code sehen wie die regstrys keys gesetzt werden
### Zusatzaufgabe (freiwillig)
1. Was sind die Gefahren bei der Bearbeitung der Registry? Wie kann man sich davor schützen?
	1. Ist die Hauptconfiguration auf windows und kann das system instabil machen
	2. davor schützen:
		1. nur registry bearbeiten wenn notwendig
		2. backup von keys machen die man ändert
		3. system wiederherstellungs punkte einstellen