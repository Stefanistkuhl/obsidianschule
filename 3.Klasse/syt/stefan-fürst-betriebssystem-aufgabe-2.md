---
id: goofy ass syt aufhabe
aliases: []
tags:
  - syt
  - syt_info
  - 3te_Klasse
---

- Prozesse
  - [Hyprland](https://github.com/hyprwm/Hyprland)
    - 2.7% CPU, 0.9% RAM , Speicher 0 Byte/s
    - Dynamic Tiling Wayland Compositor, Wie ein Desktop environment vorstellbar, mit dem Unterschied, dass Fenster automatisch nach Konfigurierten Regeln verwaltet werden.
  - [btm](https://github.com/ClementTsang/bottom)
    - 1.0% CPU, 0.1% RAM , Speicher 0 Byte/s
    - Task Manager für den Terminal, erlaubt die Auslastung der Systemressourcen zu sehen, Prozesse zu verwalten etc.
  - [tmux: server](https://github.com/tmux/tmux)
    - 0.2% CPU, 0.1% RAM , Speicher 0 Byte/s
    - Terminal Multiplexer, erlaubt mehrere Terminals Parallel laufen zu lassen diese im Hintergrund laufen zu lassen auch wenn man den Terminal selbst schließt und so kann man später diese Sessions wieder öffnen.
  - [zen-bin](https://github.com/zen-browser/desktop)
    - 0.5% CPU, 4.9% RAM , Speicher 150 kb/s
    - Browser (Selbsterklärend)
  - [kitty](https://github.com/kovidgoyal/kitty)
     - 0.5% CPU, 1.4% RAM , Speicher 0 Byte/s
     - Terminal interface um mit der Shell zu interagieren.

- Dateiverwaltung
  - ![](Pasted%20image%2020240927144209.png)
  - Wenn man eine Datei erstellt passiert folgendes:
    - Ein Zeiger wird erstellt, der zu den Datenblöcken auf der Festplatte zeigt, wo Informationen wie Dateibesitzer und Berechtigungen abgespeichert werden.
    - Dann wird ein Link erstellt zu der Datei was quasi der Dateiname is um die Datei im Dateisystem anzuzeigen.
    - [quelle](https://askubuntu.com/questions/113863/how-are-files-created)

- Windows vs Linux
  - Benutzerfreundlichkeit
    - Windows
      - Auf so gut wie jedem Pc, Laptop etc vorinstalliert und da es der Standard ist. Zusätzlich existiert fast jede Software für Windows und so muss der Nutzer nie nach Alternativen oder Workarrounds suchen.
    - Linux
      - Eigentlich nie Vorinstalliert, weshalb für die Meisten Nutzer die Hürde es auszuprobieren viel zu groß ist und es so als weniger Nutzerfreundlich wirken kann, selbst wenn der installation Prozess oder der Desktop Nutzerfreundlicher sind. Die Nutzerfreundlichkeit hängt alleine von der Gewählten Distribution und des Desktops ab, jedoch das Fehlen an Treibern und anderer Software sind oft schlechtere und weniger Nutzerfreundliche Programme die einzige Wahl des Nutzers.
  - Sicherheit 
    - Windows
      - Da 71.47% des Desktop Os Marketshares Windows sind wird logischerweise auch die meiste Maleware dafür entwickelt. Neben dem hat Windows andere Ansätze zu Datei und Benutzerberechtigungen.
    - Linux
      - Der kleinere Marktanteil allein bringt schon einen enormen Sicherheitsvorteil.
      - Abgesehen davon gibt es auch einige Technische Unterschiede
        - Nutzerrechte
          - Im Gegensatz zu Windows braucht man für Sämtliche Systemlevel root Rechte und muss ein Passwort eingeben, wenn im Windows man per Default nur auf Ja drücken muss. 
            - Zum Beispiel wenn man ein Script ausführt muss man sobald diese Systemänderungen vornimmt diese Authentifizieren.
        - Software Installation
          - Während man in Windows in im Internet einen Installer sucht, nutzt man in Linux einen Packet manager, der diese Arbeit für einen Übernimmt und die Software von Community verwalteten Repositorys, wo die Programme auf ihre Integrität und Sicherheit überprüft werden. Windows hat auch den Windows Store und Winget Packet manager, aber so gut wie keiner Nutzt diese.
        - Open Source
          - Mehr Leute Augen auf dem Code → mehr Schwachstellen Bugs etc werden behoben.
        - [quelle](https://medium.com/codex/5-reasons-why-linux-is-more-secure-than-windows-1d036c3d3324)
  - Einsatzbereiche
    - Windows
      - Desktop, Server
    - Linux
      - Dekstop, Server, IOT

