#Privat #homelab
[[🏳️‍⚧️Netzwerktiger]]
[[Privat]]
[[🛜ccna theroie]]

## <mark style="background: #FFB8EBA6;">Cisco Cli ass</mark>

### <mark style="background: #FFB8EBA6;">Basic Device Security</mark>

- <mark style="background: #FFB8EBA6;">Hostname ändern</mark>
	- global conf → en → conf t
	- hostname {name}
- <mark style="background: #FFB8EBA6;">Enable Passwort ändern (clear text)</mark>
	- global conf
	- enable password {passwort}
- <mark style="background: #FFB8EBA6;">Passwort in running conf ansehen</mark>
	- exec mode → show run
	- man sieht dort das pw in clear text
- <mark style="background: #FFB8EBA6;">Passwort und zukünftige Verschlüsseln</mark>
	- global conf
	- service password-encryption suckt aba die Verschlüsselung davon
- <mark style="background: #FFB8EBA6;">Verschlüsseltes Passwort in running conf ansehen</mark>
	- in running conf (kann man nur in exec sehen oder in config do sh run) sieht man das Verschlüsselt is aba is in ass Verschlüsselung
- <mark style="background: #FFB8EBA6;">Verschlüsseln in besser</mark>
	- global conf → enable secret {passwort} used md5 (way besser als anderer command und acutally sicher)
- <mark style="background: #FFB8EBA6;">Welches pw usen um in exec modus zu kommen</mark>
	- das alte enable Passwort was noch unverschlüsselt war und und mit service password-encrytion kake verschlüsselt wurde geht nicht mehr sondern man muss dass von enable secret {passwort} benutzen
- <mark style="background: #FFB8EBA6;">running conf in startup conf speichern</mark>
	- exec → copy run start

