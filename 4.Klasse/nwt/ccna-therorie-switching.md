[[netzwerktiger]]
[[🛜ccna theroie]]
[[Privat]] #Privat #homelab #ccna #nwt 
# <mark style="background: #FFB8EBA6;">Switching</mark>

### <mark style="background: #FFB8EBA6;">Ethernet LAN Switchting</mark>

- <mark style="background: #FFB8EBA6;">Data Link Layer recap</mark>
	- Provides <mark style="background: #FFB8EBA6;">node-to-note connectivity and data transfer</mark> (zb pc to switch, switch to router,...)
	- Deefines how data is formatted for transmission over a physical medium (zb copper utp calbes)
	- Detects and (possibly) corrects Physical Layer errors
	- Uses Layer 2 addressing, seperate from Layer 3 addressing (nix ips)
[[ethernet-frame-aufbau]]
- <mark style="background: #FFB8EBA6;">MAC Address</mark>
	- 6 byte (48bit) 
	- physical address asigned to the device when it is made
	- AKA "Burned in Address" (Bia)
	- unique
	- <mark style="background: #FFB8EBA6;">OUI</mark>
		- first 3 bytes of the address
		- Organizationally Unique identifier
		- assinged to the company making the device
	- last 3 bytes are unique to the deivce itself (Bia)
	- written in 12 <mark style="background: #FFB8EBA6;">hexadecimal</mark> characters
- <mark style="background: #FFB8EBA6;">Example for Frames going through a Switch</mark>
	- ![](DR04-12-2023-18.excalidraw.svg)
	- ![](DR04-12-2023-45.excalidraw.svg)
- <mark style="background: #FFB8EBA6;">More Detailed Example</mark>
	- 
- <mark style="background: #FFB8EBA6;">Arp</mark>
	- → Address Resolution Protocol
	- used to discover Layer 2 adress of a known Layer 3 address
	- ARP Request → brodcast = send to all hosts on the network
	- ARP Replay → unicast only to one host → the one that requestet it
