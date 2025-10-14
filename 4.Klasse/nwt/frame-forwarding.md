---
tags:
  - nwt
  - 3te_Klasse
---
Tweo terms are associated with frames entering or leaving an interface 
- Ingress - entering the Interface 
- Egress - exiting the interface
A swtich forwards based on the ingress interface and the destonation MAC address. 
A switch uses its MAC address table to make forwarding decisions

Port Table

| Dest Address | Port |
| ------------ | ---- |
| EE           | 1    |
| AA           | 2    |
| BA           | 3    |
| EA           | 4    |
| AC           | 5    |
| AB           | 6    |


Note: a switch will never allow traffic to be forwarded out the interface it recieved the traffic