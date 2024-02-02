[[🏳️‍⚧️Netzwerktiger]]
[[🛜ccna theroie]]
[[Privat]] #Privat #homelab #ccna
# <mark style="background: #FFB8EBA6;">Switching</mark>

### <mark style="background: #FFB8EBA6;">Ethernet LAN Switchting</mark>

- <mark style="background: #FFB8EBA6;">Data Link Layer recap</mark>
	- Provides <mark style="background: #FFB8EBA6;">node-to-note connectivity and data transfer</mark> (zb pc to switch, switch to router,...)
	- Deefines how data is formatted for transmission over a physical medium (zb copper utp calbes)
	- Detects and (possibly) corrects Physical Layer errors
	- Uses Layer 2 addressing, seperate from Layer 3 addressing (nix ips)
- <mark style="background: #FFB8EBA6;">Ethernet Frame</mark>
	- Header Size + trailer → 18 bytes
	- Min size of Ethernet frame (Header + Payload[Packet] + Trailer) → 64 bytes
	- 64 bytes - 18 bytes (header + trailer size) = 46 bytes
	- → min payload(packet) → 46 bytes
		- if the payload is less than that → padding bytes are added
			- zb 34 btye packet + 12 byte padding 46 bytes
	- Preamble and SFD Excluded form the Size
	- ![[DR04-12-2023-27.excalidraw]]
	- <mark style="background: #FFB8EBA6;">Preamble and SFD</mark>
		- used for syncronazation → prepare device to recieve rest of the data from the frame
		- <mark style="background: #FFB8EBA6;">Preamble</mark>
			- 7 long long (56bits)
			- Alternating 1's and 0's
			- 10101010 * 7
			- Allows devices to syncronize their reciever clocks
		- <mark style="background: #FFB8EBA6;">SFD</mark>
			- Start Frame Delimiter
			- 1 byte long (8bits)
			- 10101011
			- Marks the end of the Preamble and the beginning of the rest of the frame
	- <mark style="background: #FFB8EBA6;">Destination/Source</mark>
		- Indicate the devices sending and recieiving the frame
		- MAC addr from sender and reciever
		- MAC = Media Access control
			- MAC addr 6 byte (48bit) → addr of the physical device
	- <mark style="background: #FFB8EBA6;">Type or Length</mark>
		- 2 byte (16bit) length
		- Value of <mark style="background: #FFB8EBA6;">1500 or less</mark> → <mark style="background: #FFB8EBA6;">length</mark> of the encapsulated packet (in bytes)
		- Value of <mark style="background: #FFB8EBA6;">1536 or greater</mark> → Type of encapsulated packet (usaually IPv4 or 6) and the length is determined via other methods
			- 0x0800(hex) = IPv4 → 2048 in dez
			- 0x86DD(hex) = IPv6 → 34525 in dez
	- <mark style="background: #FFB8EBA6;">Fcs</mark>
		- → <mark style="background: #FFB8EBA6;">Frame Check Sequence</mark>
		- 4 bytes (32bit) in length
		- detects currupted data by running a "CRC" algorithm over the received data
			- CRC = Cyclic Redundancy Check
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
	- ![[DR04-12-2023-18.excalidraw]]
	- ![[DR04-12-2023-45.excalidraw]]
- <mark style="background: #FFB8EBA6;">More Detailed Example</mark>
	- 
- <mark style="background: #FFB8EBA6;">Arp</mark>
	- → Address Resolution Protocol
	- used to discover Layer 2 adress of a known Layer 3 address
	- ARP Request → brodcast = send to all hosts on the network
	- ARP Replay → unicast only to one host → the one that requestet it
