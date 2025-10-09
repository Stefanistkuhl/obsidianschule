---
tags:
  - sew
  - 4te_Klasse
---
P![](%C3%BCbung-uhr%2003-10-2025-39.excalidraw.svg)
Klasse Graphics

ydread

`class MeineUhr extends JFrame`

```java
public void run(){
	// berechnung der zeiger
	repaint();
}

public void paint(Graphics g){
	Super.paint(g);
	g.drawline(x0, y0, x, y);
}
```