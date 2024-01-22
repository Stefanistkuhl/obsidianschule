---
tags:
  - 2te_Klasse
  - syt
---
[[😡Grrrrrlektrotechnik]]
[[🥲2te Klasse]]
### <mark style="background: #FFB8EBA6;">Betriebssysteme</mark>
- Unterscheidungen
	- Genereal purpose OS
	- Windows, Linux, Mac OS, Handy
	- real time os
	- Unterschied zu general purpose → Ressourchen bzw Aktionen werden hochverfügbar und in einer definierrten Zeit aufrufbar
	- Bsp: Maschienenbau-Robotic Kfz Abs, Digitalkamera, Medizin(Herzschlagmesser), Stock Exchange, Vekehrswesen(Verkehrskontrolle), Flugverkehr Radar inkl Militär, Haushalt Mikrowelle, Waschmaschiene,
	- soft/firm/hard- RTOS → zeit für Prozessabläufe wird garantiert, bis maximale Zeit (d.h ungefähr
### <mark style="background: #FFB8EBA6;">Prozesse, Thema und Jobs</mark>
Obwohl Programm und Prozess einander sehr ähnlich sehen, unterscheiden sie sich doch wesentlich:

<mark style="background: #FFB8EBA6;">Programm</mark> = <mark style="background: #FFB8EBA6;">statische</mark> Sequenz von Anweisungen
<mark style="background: #FFB8EBA6;">Prozess</mark> = Container für einen Satz von Ressourcen, der erst dann benützt wird, wenn eine Instanz des Programms ausgeführt wird.
##### Versuch einer Definition

<mark style="background: #FFB8EBA6;">Prozess</mark> = Programm in der <mark style="background: #FFB8EBA6;">Ausführung</mark> dabei hilft:
- Programm selbst = statisch (code)
- Prozess ist aber dynamisch Prozess = Programm + zugehöriger Datensatz

Der Prozess kann mit einer Handvoll Elemente charakterisiert werden, diese heißen PCB... process control block z.B ID, Zustand, Prozesse = Kontrolle, Programmzähler

"Header" des Prozesses → 

| Platzhalter  | Platzhalter2   | 
|-------|---------|
| Identifier             | eindeutige Kennung des Prozesses |
| State                  | Programmzustand (running, wait) |
| Priority               | "Rangordnung" |
| Programm Counter       | zeigt auf aktuelle code zeilen |
| Memory Pointers        | Zeiger auf bestimme Speicherplätze |
| Context Data           | Zugehöriger Datensatz |
| I/O status             |
| Accounting Information | Zugrifsrechte |

"Dining philosopher problem" (von Dijkstra)
5 Italiäner, 5 Teller, 5 Gabeln
Algorhytmus: Jeder nimmt zuerst die <mark style="background: #FFB8EBA6;">linke Gabel</mark>, ausschließend die rechte (er braucht beide Gabeln zum Essen)
→ <mark style="background: #FFB8EBA6;">jeder</mark> braucht eine <mark style="background: #FFB8EBA6;">2. Ressource</mark> (Gabel) , muss aber warten, bis diese vom <mark style="background: #FFB8EBA6;">rechten Nachbarn freigegeben wird</mark>, Der gibt sie aber erst <mark style="background: #FFB8EBA6;">frei wenn er gegessen hat</mark>, Das kann er aber <mark style="background: #FFB8EBA6;">erst</mark>, wenn er <mark style="background: #FFB8EBA6;">seinerseits</mark> von seinem <mark style="background: #FFB8EBA6;">nächsten Nachbarn freigegeben</mark> wird. Der gibt sie erst frei, wenn er gegessen hat. Das kann er der andere es hat usw

<mark style="background: #FFB8EBA6;">Problem:</mark> Wenn alle 5 gleichzeitig essen wollen, kann dies keiner tun, weil ihm jeweils die Zugehörige Gabel fehlt
<mark style="background: #FFB8EBA6;">Folge:</mark> alle 5 verhungern = starving
→ diese ausgangslose Situation heißt: Deadlock (Geometry Dash Referenz)

Prozesse A und B kooperieren:

| A | B |
| ---- | ---- |
| wartet auf Ressource x | benötigt Ressource x, kann sie erst freigegeben werden wenn nötige Info von Prozess A kommt |
| A kann die erwartete Info nur liefern, wenn Ressource x verfügbar ist |  |

→ <mark style="background: #FFB8EBA6;">Klassischer Deadlock</mark>

- <mark style="background: #FFB8EBA6;">Bedingungen</mark>
	- <mark style="background: #FFB8EBA6;">Mutal Exclusion</mark>
		- eine bestimme Ressource kann zu irgendeinen (bestimmten) Zeitpunkt nur von einem einzigen Prozess belegt werden
	- <mark style="background: #FFB8EBA6;">Ressorce Waiting</mark>
		- Wenn eine Ressource beantragt wird, die besetzt ist, muss der anfordernde Prozess warten, bis diese freigegeben wird. Er ist währenddessen in einem Wartezustand = BLOCKED
	- <mark style="background: #FFB8EBA6;">bsp mutal exclusion</mark>
		- bei einem Drucker kann auch nur einer Gleichzeitig drucken → deshalb die Printer Queue
	- <mark style="background: #FFB8EBA6;">Partial allocation</mark> 
		- ein Prozess, der bereits eine Ressource "besitzt", kann die Zuteilung weiter (anderer) Ressourcen beantragen → der Prozess belegt dann für andere Ressourcen, die dann für andere Prozesse nicht zur Verfügung stehen
	- <mark style="background: #FFB8EBA6;">Nonpreemption</mark>
		- Wenn eine Ressource einen Prozess zugeteilt werden kann sie diesen Prozess (ausschließlich) nicht zwangsweise wieder entzogen werden

Verhindern eines Deadlocks ist Aufgabe des Betriebssystems → dafür gibt es 3 grundlegende Möglichkeiten:

- <mark style="background: #FFB8EBA6;">Deadlock Detection und Recovery</mark>
	- Ressource Allocation Graph = Zuteilung und Freigabe von Ressourcen
	- regelmäßige Aktualisierung zeigt sogenannten Zyklen (=Deadlocklocksituartionen)
	- OS terminiert den "blockierenden" Prozess (=auflösen) (das ist aber relativ Brutal)
- <mark style="background: #FFB8EBA6;">Deadlock Prevention</mark>
	- beim Design des OS wird versucht, eine der grundlegenden Bedingungen für einen Deadlock zu verhindern, d.h eine der Bedingungen wird dabei "a priori verletzt" (a priori = im Vorfeld)
		- bsp: Spooling von Druckaufträgen <mark style="background: #FFB8EBA6;">verhindert die Mutual Exclusion</mark> → "<mark style="background: #FFB8EBA6;">beliebig</mark>" <mark style="background: #FFB8EBA6;">viele</mark> Prozesse <mark style="background: #FFB8EBA6;">können Druckaufträge</mark> an die <mark style="background: #FFB8EBA6;">Warteschlange</mark> schicken. Der Drucker selbst wird nämlich nur von einem Prozess angesprochen (belegt),  der Printer Server
- <mark style="background: #FFB8EBA6;">Deadlock Avoidance</mark>
	- <mark style="background: #FFB8EBA6;">aufwendigste Variante</mark> im Vorfeld wird <mark style="background: #FFB8EBA6;">vor der Zuordnung</mark> einer Ressource eine Analyse durchgeführt, ob <mark style="background: #FFB8EBA6;">eventuell später</mark> ein <mark style="background: #FFB8EBA6;">Deadlock entstehen kann</mark> Problem: mögliche Deadlocks können <mark style="background: #FFB8EBA6;">nur im begrenzten Umfang erkannt werden</mark>, d.h eine tatsächliche "sichere" Entscheidung ist <mark style="background: #FFB8EBA6;">selbst für die besten Algorhytem nicht möglich.</mark> 
- <mark style="background: #FFB8EBA6;">Prozessabläufe</mark>
	- aufrufen eines Os-Prozess
	- Login eines Users
	- laufender Prozess startet eine einen seiner Prozesse (Parent - child)
- <mark style="background: #FFB8EBA6;">Prozessbeendung</mark>
	- schließen einer Anwendung    
	- Logout eines Users            
	- Service - Request aus dem OS  
		- gewollte Ende eines Prozesses → liefert Rückmeldung an OS →  wenn Rückmeldung != 0 → Fehler zb I/O Error oder Arethmetic error. 	    
	- 5 State Modell
		![[bum]]
		- <mark style="background: #FFB8EBA6;">new:</mark> Prozess ist zur Durchführung vorbereitet, aber noch nicht im Main - Memory
		- <mark style="background: #FFB8EBA6;">ready:</mark> der genaue Prozess im Arbeitsspeicher und wartet auf sein "Startsignal", das heißt die Zuteilung der CPU
		- <mark style="background: #FFB8EBA6;">running:</mark> der Prozess ist im "Besitz" der CPU und wird ausgeführt
		- <mark style="background: #FFB8EBA6;">blocked (wait):</mark> Prozess ist gerade im Wartezustand und wartet auf ein bestimmtes Ereignis, z.b Ender einer I/O-Operation, Freiwerden der CPU
		- <mark style="background: #FFB8EBA6;">exit:</mark> Prozess wurde beendet/abgebrochen und ist nicht mehr zur Ausführung bereit, "Ergebnisse" bleiben eventuell temporär erhalten
		- <mark style="background: #FFB8EBA6;">Problem:</mark> Hauptspeicher ist limitiert, zu viele Prozesse → Performance = Verlust. eine Lösung: Swapping → Prozess teilweise oder zur Gänze in den Sekundärspeicher verschoben (Hdd, Auslagerungdatei)
		- → weiterer Prozessszustand nötig = <mark style="background: #FFB8EBA6;">Suspend</mark> ("aussetzen") dabei müssen alle nötigen Informationen gespeichert (gesichert) werden, PCB + Zwischenergebnis + Prozess, damit der Prozess, später auf exakt derselben Stelle fortgesetzt werden kann.
		- Ursachen für den suspend-Zustand (außer Swapping)
			- periodisch ausgelöste Prozesse können während <mark style="background: #FFB8EBA6;">WAIT</mark> suspended werden (z.b Timer)
			- OS kann einen  Hintergrundprozess oder einen problembehafteten Prozess suspenden (z.b Printqueue) 
			- suspenden eines interaktiven Requests (z.bb Debugging)
			- parent-Prozess suspended eigenen Child-Prozess zur Koordination, Modifikation, ...
	- <mark style="background: #FFB8EBA6;">Kontrollstrukturen</mark> (zur Prozessverwaltung)
		 ![[dr_Tu_35_2023_13.excalidraw]]
- <mark style="background: #FFB8EBA6;">Prozessimage</mark>	
	- User Programm → Sourcecode
	- User data → manipulierende Daten, bzw Programme
	- Systemstack → alle mit dem Prozess assoziierten Slots
	- <mark style="background: #FFB8EBA6;">Process Control Block</mark>
		- Prozess ID (Prozessnummer, Benutzererkennung, parent process)
		- Process State Information (Registerinhalte, Stack Router)
		- Prozess control Information Querverweise auf andere Prozesse, scheduling + Zustandsinfos
- <mark style="background: #FFB8EBA6;">Execution Modes</mark> 
![[dr_We_27_2023_37.excalidraw]]
Api ... application programming interface 
	= Programmierschnittstelle im user mode
	(im Windows SDK enthalten zb)
beinhaltet tausende aufrufbare Funktionen

- <mark style="background: #FFB8EBA6;">Hauptprotokolle:</mark>
	- Base Services
	- elementare Funktionen: Speichermanipulationen, Kryptofunktionen(TPM)
	- Component Services = Com + (conpounent object model) Kommunikation zwischen den Prozessen, für high Performance Kommunikation (Internet und Serveranwendungen)
	- user interface Services
		- z.B dynmamic anotations (Bestimmte Fehler)
	- graphics & multi media Services
		- zb Streamingserver
	- Messaging and colaboration Services
		- E-mail, calendendering, file sharing
	- Networking Services
		- remote access, VPN, routing
	- Web Service
		- Tcp,Udp,http-client,http-server,xml

<mark style="background: #FFB8EBA6;">.NET - Framework</mark> 
> Beziehungen der Komponenten

![[dr_We_03_2023_42.excalidraw]]
CLR ... common language runtime
> Laufzeitumgebung für (Managed) code beinhaltet einige Features (zb. Garage collection)
  
FCL ... Framework class Library, ECLR
> Die CLR ist als Klassischer COM-Server implementiert.
> Com-Server: stellt Server auf Serveranwendungen (für den Client) zur Verfügung

##### <mark style="background: #FFB8EBA6;">Services, Funktionen, Routinen (exemplarisch)</mark>

- Windows API - Funktionen createprocess createfile 
- System calls native system services 
	- undokumentierte (umanaged) Services, aus dem user-mode aufrufbar
		<mark style="background: #FFB8EBA6;">NTCreate Process</mark> (start eines neuen Prozesses)

- Kernel Support Funktionen
	- = Subroutinen, die nur vom Kernel aus aufrufbar sind ExAllocatePoolWilthTag = lädt einen Geräte Treiber aus dem Heap 
	- Heap ←→ Stack
	- Heap: dynamischer Speicher
	- Stack: strukturierter Speicher

#### <mark style="background: #FFB8EBA6;">Windows Services</mark>

- <mark style="background: #FFB8EBA6;">Prozesse, die vom Service Control Manager gestartet werden,</mark>
	- zb Task Scheduler Service - läuft im User-Mode, unterstützt die Zeitplanung der Applikationen (CPU-Time)(!= Devicetreier)
- <mark style="background: #FFB8EBA6;">DLLs (dynamic link libraries)</mark>
	- Satz an aufrufbaren Subroutinen, in einem einzigen Binärfile zusammen gefasst (linked), der dynamisch geladen wird.
		- zb Msvert.dkk (C runtime libary)
		- Versmel32.dll (Subsystem libary)
	- Vorteil der Dlls (gegenüber statischen Libraries)
		- → Apps nützen Dlls gemeinsam (sharing)
		- → Windows stellt ferner Sicher, dass immer nur 1 Kopie einer dll im Speicher ist.
- <mark style="background: #FFB8EBA6;">Virtual Memory</mark>
	- basierend auf einem linearen Adressraum, damit jeder Prozess (scheinbar) seinen eigenen ("großen") privaten Adressraum zur Verfügung hat.
	- → logische Sicht auf den virtuellen Speicher ist nicht ident mit dem Physikalischen Speicher [[]]![[dr_We_12_2023_08.excalidraw]]
	- Der <mark style="background: #FFB8EBA6;">Memory Mapper ist Teil des OS</mark> und <mark style="background: #FFB8EBA6;">stellt sicher</mark>, dass sich die (phys) <mark style="background: #FFB8EBA6;">Bereiche unterschiedlicher Prozesse nicht überschneiden</mark>
	- Problem: physikalischer Speicher << virtueller Speicher → einige Inhalte werden daher auf die Festplatte ausgelagert = <mark style="background: #FFB8EBA6;">Swapping</mark>
	- <mark style="background: #FFB8EBA6;">Größe</mark> des virtuellen Speichers ist von der <mark style="background: #FFB8EBA6;">Plattform abhängig</mark> → x86(32bit) = max 4gb
	- → daher würde die Hälfte von <mark style="background: #FFB8EBA6;">OS selbst benötigt</mark> (obere Hälfte) 0x8000 0000 - 0xFFFF FFFF
	- → <mark style="background: #FFB8EBA6;">untere Hälfte ist für Prozesse verfügbar,</mark> dadurch virtueller Speicher scheint es so, dass jeder Prozess diese Hälfte exklusiv erhält.
	- Alternativ: boot-time option Prozesse bekommen die Möglichkeit, 3GB zu adressieren, wenn sie spezielle Programme laufen lassen.
		- Die Programme müssen speziell gekennzeichnet werden, dazu dient ein bestimmtes Flag (=Marker), das "large adress space aware"- flag,
		- → zb Datenbankserver → kaum größere Teile der Datenbank in den Speicher laden, wodurch das Mapping reduziert wird, und die Zugriffe beschleunigt werden.
		- Falls das immer noch trz wenig ist → Mechanismus AWE → Adress Windowing Extension
			- Erlaubt bis zu 64GB Physischen Speicher zu belegen
		- Nachteil:
			- statt des Memory Managers muss der Programmierer das Mapping übernehmen. (dh er muss sicherstellen, dass Prozesse Speicher nicht überlappend benutzen)
		- ![[dr_Tu_37_2023_19.excalidraw]]
#### <mark style="background: #FFB8EBA6;">Kernel Moide vs User Mode</mark> 

x64 CPUs → "priviligierte levels" , Sicherheitsring

Problem: Treiber von 3.Herstellen (z.b Grafikarten) sitzen im Ring 0, fehlerhafte Programmierung → OS-Störungen
![[dr_Tu_26_2023_50.excalidraw]]
→ zusätzliche Schutz Funktion von MS:
- KMCS kernel mode code signings
	- dh für 64bit Treiber: kryptograph Schlüssel (SH1-1?) (Windows)
	- Hü1: Dualboot option
		- welche Strategien gibt es?
		- Unterschiede bei verschiedenen OS

#### <mark style="background: #FFB8EBA6;">Dualboot hü</mark>

- Unterschiede
	- gibt es aber grundsätzlich kann man alles gleich machen eigentlich os egal
- Vorrausetzungen
	- 2te Festplatte oder Freie Partition
- grub boot loader erkennt automatisch anderes os oder wenn nicht erkannt es in der grub.cfg datei hinzugefügt werden oder man wählt es vom boot menü aus in was man booten will
- Fazit grub macht alles

Dualbooten klingt kompliziert, aber ist eigentlich ganz einfach. Als entscheidet man sich für eine von 2 Strategien entweder das andere Betriebssystem auf einer anderen Festplatte zu installieren, oder auf der jetzigen eine zweite Partition anlegen.
Jenachdem was man wählt der nächste Schritt ist es von einem USB Stick zu booten mit Betriebssystem, das man installieren will. Wenn man das hat und bei der Instalations des Betriebssystems kann man jetzt noch die Festplatte partitionieren falls man es noch nicht vorher gemacht hat. Nachdem man das Betriebssystem installiert hat ohne im Prozess die falsche Festplatte oder Partition unabsichtlich ausgewählt und gelöscht hat, dann sollte beim Einschalten entweder Windows Boot Manager oder der Bootloader des anderen Betriebssystems jeweils die andere Option zeigen. Wenn nicht kann man die Konfigurationsdatei des Bootloaders bearbeiten um es anzuzeigen, aber hierbei sollte man Vorsichtig sein, damit man nicht seinen Bootloader kaputt macht. 
All in allem Dualbooten ist relativ simple, solange man den Dualboot nicht verschlüsseln will und es nicht zu Problemen mit dem Bootloader kommt und das andere Betriebssystem nicht erkannt wird. Das schöne am Dualbooten ist, dass egal was für einen Computer man verwenden will und was für ein Betriebssystem gerade installiert ist, kann man mühelos einen Dualboot einrichten, da man nur eine freie Festplatte oder Partition benötigt.

### <mark style="background: #FFB8EBA6;">Prozesse, Threads und Jobs</mark>

- <mark style="background: #FFB8EBA6;">Prozessinhalte:</mark>
	- private virtual adress space = virtuelle Speicheradressen, die von Prozess benötigt werden
	- ausführbares Programm(executable)
		- obigen Adressraum zugeordnet
		- definiert sämtliche initialisierungsdaten
		- + Datums-/Zeitstempel
	- Prozess ID
		- unique identifier (Teil der ClientID)
	- Liste der Open Handler (zu den div. Ressourcen)
		- Files(verfügbar für Threads im Prozess)
		- communication ports
		- semaphore (=Datenstrukturen)
	- Access Token
		- security context, zur Identifikation von:
			- user
			- security group(s)
			- Session
			- privileges
			- UAC (User Account Control) - virtualization state
	- Zumindest 1 Thread
		- Anmerkung: darf nicht ein leerer Thread sein(sind auch sinnbereit)

> Jeder Prozess zeigt auf seinem partent-Prozess (Creator)
> Wird der Creator geschlossen, zeigt der child-Prozess auf einen leeren praten-Prozess 
> Der Prozess kann aber weiterlaufen, da er seine eigne, eindeutige ID hat. (und die benötigten geteilten Daten/Ressourcen erhalten bleiben)

#### <mark style="background: #FFB8EBA6;">Threads</mark>

> "minimale" Einheit innerhalb eines Prozesses er wird vom Os für die Ausführungsplanung benötigt. (Zur Erinerung: ein Prozess ist ohne Zumindest 1 Thread nicht lauffähig)

- <mark style="background: #FFB8EBA6;">essenzielle Komponenten</mark>
	- <mark style="background: #FFB8EBA6;">Thread ID</mark>
		- Prozess ID und Thread ID gehören demselben Namespace an
	- 2 Stacks→ einen für dir Ausführung im kernel mode und einen im user mode.
	- <mark style="background: #FFB8EBA6;">Satz an CPU Registern</mark> (Inhalte) → zur Abbildung des aktuellen Status des Threads
	- <mark style="background: #FFB8EBA6;">TLS → Thread local storage </mark>
	  - = private storage area mit Runtime libraries, DLLS Subsystems, ...
	- <mark style="background: #FFB8EBA6;">Thread eigener security Context</mark>
	  - im bestimmten Fällen, im multitheads applications, bei Serveranwendungen (beinhaltet security ID der Clients)
	  - Threadcontext: Inhalte sind architekturabhängig
	  - Aum: läuft ein Thread im 32 bit-Modus, so liegt er sowohl einem 32bit-Cotext, das auch einem 64bit-Context, damit zwischen diesen beiden Modi umgeschaltet werden kann.
	
	- <mark style="background: #FFB8EBA6;">Thread Switching</mark>
	- häufiges Umschalten zw. Theads ist (unter anderem für die CPU) aufwändig.
		Windows - 2 Mechanismen
	- Fiber
	  - aka light weihgt Threads
	  - laufen im user mode ⇒ für d. Kernel nicht sichtbar.
	  - Fibers und Threads sind Teil derselben Anwendung →
		  - ConvertThreadToFiber → uas einem Thread wird ein aufteilbarer Fiber gemacht
		  - dieser "neuer" Fiber kann weitere Fiber erzeugen, mit "CreateFiber" (jeder Fiber erzeugt seinen eignen Satz aus Fiber)
		  - im Gegensatz zum Thread muss ein Fiber manuell gestartet werden → "Switch to Fiber" ein Fiber stoppt nur auf 2 Arten:
			  - wenn er abgelaufen ist
			  - wenn er seinerseits einen eigenen Fiber startet
	- <mark style="background: #FFB8EBA6;">UMS Threads</mark>
		- (user-mode scheduler Threads) gibt es ausschließlich im 64bit Windows Versionen → haben viele Vorteile der Fiber, vermeiden aber manche der Nachteile → UMS-Threads haben einen eigenen kernelthreadstste dh sie sind für den Kernen sichtbar. Deshalb können sie
			- System Calls blockieren 
			- um Ressourcen konkurrieren bzw diese teilen
			- wenn = > 2 UMS-Threads lediglich im Usermode arbeiten, dann können sie untereinander regelmäßig umschalten, ohne den Scheduler zu benötigen, dh der "Context Switch" erfolgt im Usermode, der Kernel sieht dabei immer nur ein und denselben Thread laufen. Sobald ein UMS-Thread den Kernel benötigt, schaltet er selbst zu seinem dezidierten Kernelmode thread um → "directed context switch" ![[DR21-11-2023-39.excalidraw]]
			- Jeder Prozess hat seinen eigenen "Execution context", dabei teilen sich die Threads innerhalb eines Prozesses den virtuellen Adressraum
				- <mark style="background: #FFB8EBA6;">Threads</mark> können dabei den <mark style="background: #FFB8EBA6;">Adressbereich</mark> eines <mark style="background: #FFB8EBA6;">anderen Prozesses nicht ansprechen</mark>
				- <mark style="background: #FFB8EBA6;">2 Ausnahmen</mark>
					- ein Prozess gestatten einem anderen den Zugriff = shared memory section (aka file memory object)
					- ein Prozess hat Zugriffsrechte, um einen andren Prozess zu öffnen i.e coss-process memory
			- Security context
			- eine Liste mit dem open Handels
				- Bsp Open Handels:
					- Dateien
					- shared Memory Bereiche
					- geteilte Ressourcen (= mutual exclusion objects, aka mutexes)
					- Events
					- Datenstrukturen
					- ![[DR28-11-2023-40.excalidraw]]
					- VAD - Virtual address descriptor
						- Datenstruktur, um vom Memory Manager nachverfolgt werden zu können. 


#### <mark style="background: #FFB8EBA6;">Jobs (aka job object</mark>

> Zwek: eine Gruppe von Prozessen zu einer einzigen Einheit Zusammenfassenm um eine Manupulation dieser Prozesse (steuern, ändern,...) zu erleichtern.

Das Jobobject (i.e "Gruppe von Prozessen") kann zb Attribute steuern und den beteiligten Prozess steruern und den beteiligten Prozess "Grenzen" setzen (zb shared memory (data...))

### <mark style="background: #FFB8EBA6;">Virtualisierung</mark>

- <mark style="background: #FFB8EBA6;">Was ist das?</mark>
	- Mehrer OS laufen gleichzeitig
	- Sandbox/Pseudo Computer
- <mark style="background: #FFB8EBA6;">Gründe</mark>
	- Sicherheit
	- Test von Hardware-fremdem OS
	- Software die für ein anderes OS geschrieben wurde
	- Effizientere Hardwarenutzung
- <mark style="background: #FFB8EBA6;">unterschiedliche Technologien</mark>
	- dabei werden mache Teile der HW fast "gerecht" verfügbar gemacht, zb CPU,RAM, andere werden zur gänze emuliert zb NIC 
- <mark style="background: #FFB8EBA6;">Nachteile</mark>
	- höhere Hardware Performance
	- höhere Komplexität → mehr know how benötigt
	- ältere Hardware ungestützt nicht immer Virtualisierung manche neue manchmal auch nd zb AMD Ryzen 76700
	- Hardware wird zum single point of failure
- Hardware Emulation != Virtualisierung dabei wird die gesamte Hardware (eines Rechners) Softwaretechnisch nachgebildet zb dafür nicht existierende Hardware für Programmierung für ortfremde Hardware (zb Android Apps auf PC) → aber ass Performance obvi
	- Zb: Yuzu, QEMU, MS Virtual PC (für Mac Os Windoof)
	- ![[DR06-12-2023-12.excalidraw]]
- <mark style="background: #FFB8EBA6;">Applikationsvirtualisierung</mark>
	- Anwendungen werden in einer virtuellen Umgebung ausgeführt
		- alle benötigten Ressourchen werden von der virtuellen Umgebung zur Verfügung gespielt
		- <mark style="background: #FFB8EBA6;">Vorteile</mark>
			- Plattformunabhängig zb JVM
			- ![[DR19-12-2023-28.excalidraw]]
		- <mark style="background: #FFB8EBA6;">Nachteile</mark>
			- geringe Performance
- <mark style="background: #FFB8EBA6;">Virtual Maschiene Monitor</mark>
	- "hybrid" = sowohl Emulation, als auch Virtualisierung 
	- jedes Guest OS erhält seinen "eigenen" virtuellen Rechners
	- <mark style="background: #FFB8EBA6;">Vorteile</mark>
		- nur geringe Änderungen im Guest OS nötig
		- Zugriff auf die wichtigsten Hardwareressourchen wird nur durchgereicht → whare Performance
		- jedes Guest OS hat seinen "eigenen" Kernel
		- ![[DR19-12-2023-51.excalidraw]]
- <mark style="background: #FFB8EBA6;">Paravirtualisierung</mark>
	- HW wird weder emuliert noch vertiert
	- abstrakte Zwischenschicht: Hypervisor auf diesen laufen die virtualisierten OS
	- Hypervisor = Meta OS, auf dem ein minimum reduziertes OS
	- guest OS erhalten eine API zur Kommunikation
	- bsp Proxmox
	- <mark style="background: #FFB8EBA6;">Vorteile</mark>
		- hohe Performance
	- <mark style="background: #FFB8EBA6;">Nachteile</mark>
		- Guest OS müssen angepasst werden → nur für Open Source (=Vorteil Hypervisor ist einfacher aufgebaut)
	- ![[DR09-01-2024-12.excalidraw]]
	- <mark style="background: #FFB8EBA6;">HW-Virtualisierung</mark>
		- Paravirtualisierung für nicht modifizierte OS (zb Windoof)
		- dafür muss die CPU angepasst werden, dh Ring 0 wird gesplittet (um einen Virtualisierungsteil erweitert)
	- <mark style="background: #FFB8EBA6;">Betriesystemvirtualisierung</mark>
		- Container,Jails
		- unter 1 Kernel laufen mehre, zueinander isolierte Instanzen eines OS instaliert, sondern lediglich eine Instanz aufrufen
		- Instanzen laufen in einem eigenen Container, wirken dabei (nach außen) wie ein eigenständiges OS
		- Anwendungen können einander nur sehen, wenn sie in derselben Instanz laufen, obwohl sie auf den selben Kernen zugreifen
		- Vorteil → geringer Ressourchenbedarf + hohe Performance
		- Nachteil → da alle Instanzen denselben Kernel verwerden, könne auch nur "gleiche" OS virtualisiert werden, zb Windoof server 2016 nur 2016 kein 2012 
		- Open VZ für Linux nur mit Versionen mit demselben Kernel(zb6.3)
		- Anw: rootserver, webserver
		- ![[DR09-01-2024-49.excalidraw]]
		- MS-Container: 4 Versionen
		- windoof10 → über Windoof Api
		- IoT core → für IoT apps
		- Nanoserver → .NET Core
		- Servercore → .NET Framework 
	- Ergänzungen
		- Hybridkernel
			- ![[DR15-01-2024-35.excalidraw]]
			- Prinzip: Treiber werden nur im Privilegierten Modus ausgeführt → "Abstürze" der Treiber können abgefangen werden
			- Virtualisierung mit binary Translation
				- ![[DR15-01-2024-43.excalidraw]]
				- Prinzip: der Hypervisor fängt alle kritischen Systemanfragen ab (vor dem eingentlischen Ressourchenzugriff)
					- Problem
						- Relativ aufwendig
						- Guest OS läuft im Ring 1 = Paravirtualisierung
		- ![[DR22-01-2024-44.excalidraw]]
		- Anmerkung: zur Errinerung paravirtualisierte OS haben keinen privilegierten Zugriff auf die HW
- <mark style="background: #FFB8EBA6;">Hypervisor</mark>
	- <mark style="background: #FFB8EBA6;">Typ 1</mark>
		- bare metal
		- ~Meta Os, läuft sehr nahe an der HW
		- ![[DR16-01-2024-40.excalidraw]]
		- Vorteil: sehr Kompakt → weniger Ressourcen → läuft schnell zb Proxmox, vmware esxi, xens
		- Der Einsatz findet häufig bei Server Virtualisierung statt 
	- <mark style="background: #FFB8EBA6;">Typ 2</mark>
		- hosted
		- ![[DR16-01-2024-37.excalidraw]]
		- besitzt ein Basis Os, it eig wie eine App (innerhalb des Guest OS), die HW wird als Abstrahierung idk zu Verfügung gestellt 
		- Vorteil
			- OS muss nd angepasst dafür werden
		- Nachteil 
			- langsam, kein direkter zugriff auf die HW
		- Bsp VirtualBox, Vmware Workstation,...
		- 