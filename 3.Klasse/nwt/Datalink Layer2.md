#2te_Klasse #nwt 
> Responsible for communications between enddevice and nics
> 
> allows upper layer protocols to access the physical layer zb encapsulates L3 Packets into L2 Frames
> 
> Performs error detection and rejects corrupt frames

- <mark style="background: #FFB8EBA6;">Unicast</mark>
	- 1 zu 1
	- SRC: A1:B1:C1:D1:E1:F1
	- DST: A2:B2:C2:D2:E2:F2
- <mark style="background: #FFB8EBA6;">Brodcast</mark>
	- 1 zu mehrere (1 zu N)
	- SRC: A1:B1:C1:D1:E1:F1 
	- DST: FF:FF:FF:FF:FF:FF (nur 1er in Binär)

![](Frame%20Proccessing.excalidraw.svg)

![](Switch.excalidraw.svg)
- <mark style="background: #FFB8EBA6;">2 sublayer</mark>
	- <mark style="background: #FFB8EBA6;">Logical Link Control(LLC)</mark>
		- communicates between upper layers and the device hardware at the lower layers
	- <mark style="background: #FFB8EBA6;">Media Access Control(MAC)</mark>
		- responsible for data encapsulation and media access control
- <mark style="background: #FFB8EBA6;">four basic L2 functions at each hop</mark>
	- Aceepts a frame from the network medium
	- De-encapsulates the frame to expose the encapsulated packet.
	- Re-encapsulates the packet into a new frame
	- Forwards the new frame on the medium of the next network segment
- <mark style="background: #FFB8EBA6;">Standards</mark>
	- Institute for Electrical and Electronic Engineers (IEEE). 
	- International Telecommunications Union (ITU).
	- International Organizations for Standardization (ISO).
	- American National Standards Institute (ANSI).
- <mark style="background: #FFB8EBA6;">Topologies</mark>
	- Physical topology
	- Logical topology
	- <mark style="background: #FFB8EBA6;">Wan topologies</mark>
		- <mark style="background: #FFB8EBA6;">Point to point</mark>
			- permanent link between two endpoints → simplest and most common
		- <mark style="background: #FFB8EBA6;">Hub and spoke</mark>
			- similar to star topology central site iNtErCoNnEctS sites through point to point links
		- <mark style="background: #FFB8EBA6;">Mesh</mark>
			- high availability → every end system is connected each other
	- <mark style="background: #FFB8EBA6;">Half duplex communication</mark>
		- one device send/receive at a time on a shared medium
		- used on wlans (and legacy topologys zb bus)
	- <mark style="background: #FFB8EBA6;">Full duplex communication</mark>
		- both devices simultaneously transmit/receive on a shared medium
		- ethernet switches operate in full duplex


