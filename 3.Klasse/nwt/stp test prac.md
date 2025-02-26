---
tags:
  - nwt
  - 3te_Klasse
---
STP = 802.1D
RSTP = 802.1w
RSTP schnella obvi

bla bla bla basic shit
- DP (Designated Port)
- RP (Root port)
	- port zur root bridge
- B (Blocked Port/Alternated Port)
	- selbst erklärend
1. root bridge bestimmen → jeder sw schickt bdpu (bridge protocol data units) hat bridge id (BID)
	1. bridge id → Prority number + vlan ID + mac
	2. default proritz 32768
	3. wenn alles gleich switch mit niedrigster mac wird genommen
2. niedrigste BID → root bridge
3. root ports bestimmen
	1. mit niedrigesten kosten bestimmen was dann root port is oidaaaaaaa
		1. geht nach gwsch
		2. 1 gbit = 4
		3. 100 mbit = 19
		4. 10 mbit 100
		5. das von normalen stp also outdated
		6. kosten werden addiert zur root bridge
		7. ![](https://i.imgur.com/d3ROVSE.png)
		8. ![](https://i.imgur.com/qZPriUe.png)
		9. obvi wenn gwschw schneller auch anders
4. bestimmen offen oder blocked → bridge id obvi wida kleiner gleich beas rafiniert und deshalb nd geblocked

### PVST (Per-VLAN Spanning Tree)

> PVST runs a seperate STP instace in each VLAN , so in each VLAn diffrent interfaces can be forwarding/blocking

![](https://i.imgur.com/p6LSiWc.jpeg)
