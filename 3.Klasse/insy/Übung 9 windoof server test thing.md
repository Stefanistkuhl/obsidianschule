---
tags:
  - 3te_Klasse
  - insy
---
![](%C3%9Cbung%209%20windoof%20server%20test%20thing%2020-03-2025-38.excalidraw.svg)
- Simple bruteforce attack
	- manuelles ausprobieren von einem Nutzernamen & password
- Dictionary brutefroce attack
	- liste an Passwörtern wird verwendet um die richtige Kombination auszuprobieren
	
`hydra -l <username> -P ./somelist -t 1 smb2`
-P ... ganze liste angeben
-p ... ein passowrd
-t ... threads
-v ... host