---
tags:
  - 2te_Klasse
  - nwt
---
[[🥲2te Klasse]]

### <mark style="background: #FFB8EBA6;">Cisco iOS-Modi</mark>

- <mark style="background: #FFB8EBA6;">User Exec Mode:</mark> > Symbol am Anfang der Zeile in der CLI → keine Rechte (obvi) zb Switch> → Switch ist hier der hostname (obvi2)
- <mark style="background: #FFB8EBA6;">priviligierter Exec Mode:</mark> # Symbol zb Switch# → enable um zu aktivieren
- ----------- 
- <mark style="background: #FFB8EBA6;">Configurations Modi</mark>
- <mark style="background: #FFB8EBA6;">global:</mark> Switch (config)# → conf t no ip lookup → wenn irgendwas in term schreibt nd 10 Jahre Vieh
- <mark style="background: #FFB8EBA6;">Line:</mark> Switch(config-line)# →
	- line console 0 Zugriff über das Konsolenkabel(Rollovercable auf Englisch) beim Switch steht beim port dafür steht Console darunter oder 0
	- line vty 0-15 Zugriff über Telnet oder SSH Zahl besagt wv Nutzer Gleichzeitig rein remoted sein können.
- <mark style="background: #FFB8EBA6;">interface:</mark> Switch(config-if)#
	- interface <Fast/GigabitEthernet oder Serial> <Port zb 0/1 1/2>


### <mark style="background: #FFB8EBA6;">Tcp ip</mark>

<mark style="background: #FFB8EBA6;">Osi 7 Schiten Modell</mark>

| Name         | Erklärung idk useless ig xd              |
| ------------ | ---------------------------------------- |
| Application  |                                          |
| Presentation |                                          |
| Session      |                                          |
| Transport    |                                          |
| Network      | Mehrere Netzwerke verbinden              |
| Data-Link    | Mehre Geräte in einem Netzwerk verbinden |
| Physical     | Datenübertragen                          |

#### <mark style="background: #FFB8EBA6;">Physical</mark>

D:

- <mark style="background: #FFB8EBA6;">Augaben</mark>
	- Geräte Physisch miteinander verbinden
	- Kodieren

##### <mark style="background: #FFB8EBA6;">Kodierung</mark>

![[DR01-12-2023-30.excalidraw]]
- <mark style="background: #FFB8EBA6;">Begriffe</mark>
	- Bandbreite
		- obvi wv zur Verfügung
	- Latzenz
		- wie lange es dauert, bis Nachricht ankommt also Verzögerung wie lange Kommunikation dauert Entfernung, Hops etc beeinflusst es
	- Throughput
		- The measure of the transfer of bits across the media over a given preroid of time zb 192bit/s (ding von tafel header 20bit da daten rest header ist auch bei goodput geused)
	- Goodput
		- The measure of usable data transfered over a given preroid of time 
		- Goodput = Throughput - traffic overhead (heade) zb 20bit pro s

##### <mark style="background: #FFB8EBA6;">Medien</mark>

- <mark style="background: #FFB8EBA6;">Kupfer Kabel</mark>
	- 2 Limitationen
		- Interferenzen
		- Dämpfung (Kabel zu lang = geht nd)
	- Kabelarten
		- Unschiedlded Twisted Pair (UTP) Cable
		- Schiedled Twisted Pair (STP) Cable
		- Coaxial Cable
			- müll nur half duplex nutzt auch keiner außer Fernseher
- <mark style="background: #FFB8EBA6;">Faserglas</mark>
	- ![[DR01-12-2023-05.excalidraw]]
- <mark style="background: #FFB8EBA6;">Wireless</mark>
	- Limitationen
		- Coverage area
		- Iterference
		- Security
		- Shared medium
	- Begriffe
		- <mark style="background: #FFB8EBA6;">SSID (Service Set identifier)</mark>
			- Name
		- <mark style="background: #FFB8EBA6;">BSSID (Basic Service Set identifier)</mark>
			- Mac addr des WAP in einem WLAN 
			- um Zugangspunkt für WLAN zb der WAP mit dem man Verbunden ist
	- Standarts
		- 802.11ac: Wifi 5
		- 802.11ax: Wifi 6
	- Vieher die man braucht
		- WAP
		- Wireless Apdaper für Client 
	- Topologien
		- Point to Point 
		- Stern alles 1 Ap
		- Reapeater (Ass)
		- Mesh (Mehrere Aps mit Kabel oder Kabellos verbunden)


###### <mark style="background: #FFB8EBA6;">Tcp/Ip</mark>

| Name           | Protokoll                                                                    |
| -------------- | ---------------------------------------------------------------------------- |
| Application    | http(s), ftp, dns ...                                                        |
| Transport      | TCP, UDP, Ports ranges: System: 0-1024, User:1024-49151, Dynamic:49152-65535 |
| Internet       | IPv4, IPv6 , Ip Adressen                                                     |
| Network Access | Ethernet,PPP(Point to point protocol),PPoE(over ethernet) Mac Adressen       |

![[dr_Fr_21_2023_27.excalidraw]]

![[dr_Fr_44_2023_18.excalidraw]]




#### <mark style="background: #FFB8EBA6;">Datalink</mark>

![[Datalink Layer2]]

### <mark style="background: #FFB8EBA6;">L3 Network</mark> 

![[Layer 3]]