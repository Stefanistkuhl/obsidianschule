---
tags:
  - 2te_Klasse
  - syt
  - syt_elektro
---
> GPIO ... general purpose input output

```python
Import RPI.GPIO as gp
gp.setmode(pg.BCM) # für pinnummer
rot = 21
gp.setup(rot,gp.OUT) # port als output setzen
gp.ouput(rot, gp.HIGH) # led zum leuchten bringen

grün = 24
gp.setup(grün,gp.OUT) 
gp.ouput(grün, gp.HIGH)
```
