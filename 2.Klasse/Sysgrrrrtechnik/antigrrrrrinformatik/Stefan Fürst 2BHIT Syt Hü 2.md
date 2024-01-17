
### Syt Hü mit dem Unterschied, dass ich jetzt weiß, wie es gemacht sein soll.

>Ziel: Kernen Driver Signature Enforcement Ausschalten
>Windows Version: Windows 11 23H2
##### **<mark style="background: #FFB8EBA6;">Schritt 1: Ins Windows Advanced Startup booten</mark>**

Dafür in Einstellungen → Windows Update → Erweiterte Funktionen → Wiederherstellung → Erweiterter Start
###### Screenshots von dem Schritt
![[Pasted image 20231118094237.png]]
![[Pasted image 20231118094253.png]]
![[Pasted image 20231118094310.png]]








##### <mark style="background: #FFB8EBA6;">Schritt 2: Im Advanced Startup Menü Disable Driver Signature Enforcement ausschalten</mark>

Problembehandlung → erweiterte Optionen → Starteinstellungen → Neustarten → Erzwingen der Treibersignnaturen deaktivieren

##### Screenshots von dem Schritt
![[Pasted image 20231118095549.png]]
![[Pasted image 20231118095556.png]]
![[Pasted image 20231118095611.png]]
![[Pasted image 20231118095622.png]]
![[Pasted image 20231118095658.png]]

##### <mark style="background: #FFB8EBA6;">Schritt 3: Admin Powershell öffnen und den Rest Ausschalten</mark> 

Mit offener Admin Powershell den Comamand **bcdedit /set nointegritychecks on** und **bcdedit /set testsigning on** ausführen

#### <mark style="background: #FFB8EBA6;">Schritt 4: Neustarten, eine neue Meldung am Desktop haben und und und Signierte Treiber instalieren können</mark>

![[Pasted image 20231118100334.png]]


