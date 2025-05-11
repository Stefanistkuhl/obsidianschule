---
tags:
  - nwt
  - 3te_Klasse
---
## Summary

IPv6 Neighbor Discovery Protocol works by using 5 types of messages encapsulated in ICMPv6. Each message has the following purpose:

- **Router Solicitation** - Hosts use Router Solicitation messages to locate routers in their local segment. Upon receipt of an RS message, routers generate Router Advertisements immediately rather than at their next scheduled time. The RS message uses ICMPv6 type 133 and is destined to the **all-routers** multicast address FF02::2.
- **Router Advertisement** - IPv6 routers advertise their presence in the local segments either periodically, or in response to a Router Solicitation. The RA message uses ICMPv6 type 134 and is destined to the **all-nodes** multicast address FF02::1. Cisco router sent RA messages every 200 seconds by default.
- **Neighbor Solicitation** - The Neighbor Solicitation message is used by nodes to resolve the physical address of a known IPv6 address (target address). The NS message is encapsulated in ICMPv6 type 135 and is destined to the **solicited-node multicast group** that is auto-generated from the targeted IPv6 address. Only the owner of the targeted IP must have subscribed to this solicited-node group. The message has a similar function to the IPv4 ARP Request but is **more secure and efficient** because it is not broadcasted to all nodes. 
- **Neighbor Advertisement** - Neighbor advertisements are used by nodes to respond to a Neighbor Solicitation message. The NA message is encapsulated in ICMPv6 type 136 and is destined for the **unicast address** in the Neighbor Solicitation message. 
- **Redirect Message** -  Routers informs hosts of a better first-hop router for a destination.

[IPv6 Neighbor Discovery Protocol | NetworkAcademy.io](https://www.networkacademy.io/ccna/ipv6/neighbor-discovery-protocol)