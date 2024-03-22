---
tags:
  - 2te_Klasse
  - nwt
---

![[DR22-03-2024-14.excalidraw]]
PC-A → PC-B
PC-A Routing Tabelle

| Ziel Netz             | Next Hop |
| --------------------- | -------- |
| 0.0.0.0/0 (unbekannt) | 10.0.0.1 |
|                       |          |
R1 Routing Tabelle

| Ziel Netz   | Next Hop    |
| ----------- | ----------- |
| 10.0.1.0/24 | 172.16.10.3 |
R3 Routing Tabelle

| Ziel Netz   | Next Hop   |
| ----------- | ---------- |
| 10.0.1.0/24 | 172.16.3.4 |
> Router 4 braucht keinen Eintrag in der Routing Tabelle, da er im einem Lan mit PC-B ist und deshalb das Ziel schon kennt.

PC-B → PC-A in 5 Hops
PC-B Routing Tabelle

| Ziel Netz             | Next Hop |
| --------------------- | -------- |
| 0.0.0.0/0 (unbekannt) | 10.0.1.4 |
|                       |          |
R4 Routing Tabelle

| Ziel Netz   | Next Hop    |
| ----------- | ----------- |
| 10.0.0.0/24 | 172.16.10.3 |
R3 Routing Tabelle

| Ziel Netz       | Next Hop   |
| --------------- | ---------- |
| 10.0.0.0/24<br> | 172.16.3.4 |

