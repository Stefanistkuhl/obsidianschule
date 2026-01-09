---
tags:
  - sew
  - 4te_Klasse
---
A thread is a Part of a proccess than can run in parallel

java std libayr class: Thread

[[übung-uhr]]

1) was ist ein thread
	1) lightweight teil eines prozesses
2) wie erstelellt man einen thread
	1) class meinthread extends Thread
	2) class eminthread extends something implements R:unnable
3) welche methode wird überschrieben
	1) run()
4) thread erzeugen
	1) meinthread t1 = new meinthread();
5) starten
	1) t1.start
6) was wenn .run 
	1) nd concurent und is blocking weil nur wie normale methode aufruft
7) wann ist ein thread beendet
	1) wenn .run() endet
	2) programm wird beendet
	3) interrupt()
8) join()
	1) wartet bis thread beendet ist
9) deadlock
	1) ressource wird gleichzeitg versucht benutzt zu werden aber is gelocked nd nd rwmutex zb
	2) public synchronized bla bla managed das bei methode um zu helfen
10) wie daten in thread hauen
	1) contructor