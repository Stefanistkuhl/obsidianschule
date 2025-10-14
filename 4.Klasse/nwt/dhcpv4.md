---
tags:
  - nwt
  - 3te_Klasse
---
1. DHCP Discover (DHCPDISCOVER)
	1. brodcast
2. DHCP Offer (DHCPOFFER)
3. DHCP Request (DHCPREQUEST)
	1. brodcast (weil falls es mehere DHCP server gibt  damit der weiß das die adresse vergeben is)
4. DHCP Acknowledgment (DHCPACK)
	1. dhcp server überprüft das angebot es es ist, was er ausgestellt hat falls es nicht passt → not acknowledge

Es gibt nich DHCP decline

Clients können nach hälfte der mietdauer einen verlängerung anfragen
schickt dhcp request ohne discovery davor 

im int `ip helper-address x.x.x.x` to use a dhcp relay so you can use a dhcp server from another subnet

vergebene addressen kann man sehen mit `show ip dhcp binding`

[[configure-a-cisco-ios-dhcpv4-server]]