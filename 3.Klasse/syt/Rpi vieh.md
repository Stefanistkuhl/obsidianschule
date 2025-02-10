---
tags:
  - 2te_Klasse
  - syt
  - syt_elektro
---
> GPIO ... general purpose input output

```python
import RPI.GPIO as gp
import time
gp.setmode(pg.BCM) # für pinnummer
rot = 21
gp.setup(rot,gp.OUT) # port als output setzen
gp.ouput(rot, gp.HIGH) # led zum leuchten bringen

grün = 24
gp.setup(grün,gp.OUT) 
gp.ouput(grün, gp.HIGH)

for i in range(69):
	gp.output(grün,gp.high)
	time.sleep(1)
	gp.output(rot,gp.high)
	time.sleep(1)
```

[[Datentypen in py]]