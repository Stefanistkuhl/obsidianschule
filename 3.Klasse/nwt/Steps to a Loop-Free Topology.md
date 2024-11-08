---
tags:
  - nwt
  - 3te_Klasse
---
Using the STA, STP builds a loop free topology
1. Elect the root bridge
2. Elect the root ports 
3. Elect designated ports
4. Elect alternate (blocked)pots. 
- During STA und STP functions swtiches use Bridge Protocoll Data Units (BPDUs) to share information about themselfes and their connections. BPDUs are used to elect the root bridge, root pots, designated ports and alternate ports 
- Each BPDU contains a bridge ID (BID) that identifies which switch sent the BPDU. The BID is involved in making many of the STA decisions including root bridge and port roles. 
- The BID contains a priority value, the MAC address of the switch and an extended system ID. The lowest BID value is determined by the combination of these three fields.

![[Steps to a Loop-Free Topology 08-11-2024-15.excalidraw]]
Root ports sind ports die mit der Root bridge verbunden sind