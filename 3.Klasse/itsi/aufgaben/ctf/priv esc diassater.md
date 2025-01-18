---
tags: []
---
### Enumeration
https://github.com/diego-treitos/linux-smart-enumeration
![](https://i.imgur.com/F9zDkLn.png)
![](https://i.imgur.com/O633WLy.png)
![](https://i.imgur.com/5a7zB2e.png)
![](https://i.imgur.com/hsFafaf.png)

/snap/docker/2963/usr/share/man/man8/zstreamdump.8.gz
nichts drin

cron dir schreibar
vlt ja einen job hinzufügen in hourly oder ähnliches

tmux und screen session

/snap/snapd/23545/usr/lib/snapd/snap-confine
/snap/snapd/23258/usr/lib/snapd/snap-confine
![](https://i.imgur.com/yHloWk4.png)
https://github.com/deeexcee-io/CVE-2021-44731-snap-confine-SUID/blob/main/snap_confine_LPE.sh
![](https://i.imgur.com/DNnqfLF.png)
![](https://i.imgur.com/LavBRO0.png)
pfad geändert
![](https://i.imgur.com/3Cci0Ko.png)
prozesse
```
---
[i] pro510 Running process binaries and permissions........................ yes!
---
-rwxr-xr-x 1 root root  1446024 Mar 31  2024 /bin/bash
lrwxrwxrwx 1 root root        4 Mar 31  2024 /bin/sh -> dash
-rwxr-xr-x 1 root root    60992 Aug  9 02:33 /sbin/agetty
lrwxrwxrwx 1 root root       22 Aug  8 14:51 /sbin/init -> ../lib/systemd/systemd
-rwxr-xr-x 1 root root   145880 Apr  7  2024 /sbin/multipathd
lrwxrwxrwx 1 root root       13 Jan  8 13:36 /snap/bin/docker -> /usr/bin/snap
-rwxr-xr-x 1 root root 39028584 Sep  6 19:08 /snap/docker/2963/bin/docker
-rwsr-xr-x 1 root root   180752 Dec  4 09:13 /snap/snapd/23545/usr/lib/snapd/snap-confine
-rwxr-xr-x 1 root root  1446024 Mar 31  2024 /usr/bin/bash
-rwxr-xr-x 1 root root   236176 Aug  9 02:33 /usr/bin/dbus-daemon
-rwxr-xr-x 1 root root   204264 Apr  8  2024 /usr/bin/find
-rwxr-xr-x 1 root root   366096 Apr  6  2024 /usr/bin/gpg-agent
-rwxr-xr-x 1 root root   186824 Apr  8  2024 /usr/bin/grep
-rwxr-xr-x 1 root root    35336 Apr  5  2024 /usr/bin/groups
lrwxrwxrwx 1 root root       10 Aug  7 17:44 /usr/bin/python3 -> python3.12
lrwxrwxrwx 1 root root       10 Aug  7 17:44 /usr/bin/python3 -> python3.12
-rwxr-xr-x 1 root root    51720 Apr  5  2024 /usr/bin/seq
-rwxr-xr-x 1 root root    35336 Apr  5  2024 /usr/bin/sleep
-rwxr-xr-x 1 root root   105272 Apr  5  2024 /usr/bin/sort
-rwxr-xr-x 1 root root   132168 Mar 31  2024 /usr/bin/ss
-rwsr-xr-x 1 root root   277936 Apr  8  2024 /usr/bin/sudo
-rwxr-xr-x 1 root root  1501304 Aug  8 14:51 /usr/bin/systemctl
-rwxr-xr-x 1 root root    39432 Apr  5  2024 /usr/bin/uniq
-rwxr-xr-x 1 root root    27008 Mar 31  2024 /usr/bin/w
-rwxr-xr-x 1 root root    76160 Aug 27 14:26 /usr/libexec/fwupd/fwupd
-rwxr-xr-x 1 root root   547840 Aug 27 14:26 /usr/libexec/udisks2/udisksd
-rwxr-xr-x 1 root root   145856 Apr  8  2024 /usr/libexec/upowerd
-rwxr-xr-x 1 root root   125536 Apr  3  2024 /usr/lib/polkit-1/polkitd
-rwxr-xr-x 1 root root 23575272 Aug 20 22:39 /usr/lib/snapd/snapd
-rwxr-xr-x 1 root root  5101016 Aug 20 22:39 /usr/lib/snapd/snap-exec
-rwxr-xr-x 1 root root   100816 Aug  8 14:51 /usr/lib/systemd/systemd
-rwxr-xr-x 1 root root   193664 Aug  8 14:51 /usr/lib/systemd/systemd-journald
-rwxr-xr-x 1 root root   285264 Aug  8 14:51 /usr/lib/systemd/systemd-logind
-rwxr-xr-x 1 root root  1657576 Aug  8 14:51 /usr/lib/systemd/systemd-networkd
-rwxr-xr-x 1 root root   535048 Aug  8 14:51 /usr/lib/systemd/systemd-resolved
-rwxr-xr-x 1 root root    59688 Aug  8 14:51 /usr/lib/systemd/systemd-timesyncd
lrwxrwxrwx 1 root root       17 Aug  8 14:51 /usr/lib/systemd/systemd-udevd -> ../../bin/udevadm
-rwxr-xr-x 1 root root    60080 Aug 27 14:26 /usr/sbin/cron
-rwxr-xr-x 1 root root    14648 Apr  8  2024 /usr/sbin/getcap
lrwxrwxrwx 1 root root        7 Mar 31  2024 /usr/sbin/ip -> /bin/ip
-rwxr-xr-x 1 root root  2165576 Aug 27 14:26 /usr/sbin/ModemManager
-rwxr-xr-x 1 root root   790192 Aug 27 14:26 /usr/sbin/rsyslogd

```
### Metaspoloit
https://github.com/rapid7/metasploit-framework/blob/master/documentation/modules/payload/linux/x86/meterpreter/reverse_tcp.md
![](https://i.imgur.com/jrRxLCJ.png)
![](https://i.imgur.com/z4GH9gS.png)
![](https://i.imgur.com/u5IPzTU.png)
![](https://i.imgur.com/d7BFPLf.png)
![](https://i.imgur.com/ipbLZcs.png)
![](https://i.imgur.com/Ll0fpsq.png)
`getsystem` and `priv module not working`
https://www.offsec.com/metasploit-unleashed/privilege-escalation/
https://null-byte.wonderhowto.com/how-to/get-root-with-metasploits-local-exploit-suggester-0199463/
### cheeseing
![](https://i.imgur.com/KVm5tNE.png)
![](https://i.imgur.com/jjWq4SC.png)
![](https://i.imgur.com/uL97iZY.png)
![](https://i.imgur.com/OzNwuu7.png)
funktioniert nicht
![](https://i.imgur.com/YNCbylp.png)
![](https://i.imgur.com/25myDQU.png)
````bash
#!/bin/bash

# Farben für die Ausgabe
green="\033[0;32m"
red="\033[0;31m"
reset="\033[0m"

# Funktion: Statusmeldung
function status {
    echo -e "${green}[INFO]${reset} $1"
}

# Funktion: Fehlerausgabe
function error {
    echo -e "${red}[ERROR]${reset} $1"
    exit 1
}

# Funktion: Zufälligen Benutzernamen generieren
generate_random_username() {
    local animals=("DancingPanda" "JumpingKangaroo" "SingingDolphin" "GrumpyCat" "FlyingPig" "NappingKoala" "LaughingLlama" "JollyPenguin" "WittyFox" "CheerfulOtter")
    echo "${animals[$RANDOM % ${#animals[@]}]}"
}

# Funktion: Benutzer prüfen und erstellen
check_and_create_user() {
    local user_name="$1"
    local user_home="/home/$user_name"

    if id "$user_name" &>/dev/null; then
        status "Benutzer $user_name existiert bereits."
    else
        status "Erstelle Benutzer $user_name..."
        useradd -m "$user_name" || error "Konnte Benutzer $user_name nicht erstellen."
        echo "$user_name:password" | chpasswd || error "Konnte Passwort für $user_name nicht setzen."
        status "Benutzer $user_name erfolgreich erstellt."
    fi

    # Sicherstellen, dass das Home-Verzeichnis existiert
    if [[ ! -d "$user_home" ]]; then
        mkdir -p "$user_home" || error "Konnte Home-Verzeichnis für $user_name nicht erstellen."
        chown "$user_name":"$user_name" "$user_home" || error "Konnte Besitzer des Home-Verzeichnisses setzen."
    fi
}

# Funktion: Flag durch sudo einrichten
setup_flag_sudo() {
    local flag_file="/opt/secret_flag.txt"
    local flag_content="FLAG{sudo_privileges_are_key}"
    local sudo_user="$1"

    status "Richte Flag für sudo ein..."

    echo "$flag_content" > "$flag_file" || error "Konnte $flag_file nicht erstellen."
    chmod 600 "$flag_file" || error "Konnte Berechtigungen für $flag_file nicht setzen."
    chown root:root "$flag_file" || error "Konnte Besitzer von $flag_file nicht ändern."

    echo "$sudo_user ALL=(ALL) NOPASSWD: /bin/cat $flag_file" > /etc/sudoers.d/ctf || error "Konnte sudoers-Datei nicht konfigurieren."

    status "Flag für sudo erfolgreich eingerichtet."
}

# Funktion: Flag in .history hinzufügen
setup_flag_history() {
    local user_name="$1"
    local user_home="/home/$user_name"
    local history_file="$user_home/.history"
    local flag_content="cat FLAG{always_check_history}"

    status "Richte Flag in .history für $user_name ein..."

    # Sicherstellen, dass die Datei existiert und die richtigen Berechtigungen hat
    touch "$history_file" || error "Konnte $history_file nicht erstellen."
    chown "$user_name":"$user_name" "$history_file" || error "Konnte Besitzer von $history_file nicht setzen."

    echo "$flag_content" >> "$history_file" || error "Konnte $history_file nicht bearbeiten."
    chattr +i "$history_file" || error "Konnte $history_file nicht unveränderbar machen."

    status "Flag in .history für $user_name erfolgreich eingerichtet."
}

# Funktion: Flag im /tmp-Verzeichnis hinzufügen
setup_flag_tmp() {
    local tmp_flag_file="/tmp/.a9f8e1b3c_hiddenflag"
    local flag_content="FLAG{tmp_directory_is_not_safe}"

    status "Richte Flag im /tmp-Verzeichnis ein..."

    echo "$flag_content" > "$tmp_flag_file" || error "Konnte $tmp_flag_file nicht erstellen."
    chmod 777 "$tmp_flag_file" || error "Konnte Berechtigungen für $tmp_flag_file nicht setzen."

    status "Flag im /tmp-Verzeichnis erfolgreich eingerichtet."
}

# Funktion: Flag in einem laufenden Prozess hinzufügen
setup_flag_process() {
    local script_path="/usr/local/bin/flag_process.sh"
    local flag_content="FLAG{inspect_running_processes}"

    status "Richte Flag in laufendem Prozess ein..."

    cat <<EOF > "$script_path"
#!/bin/bash
export SECRET_FLAG="$flag_content"
sleep 600
EOF

    chmod +x "$script_path" || error "Konnte $script_path nicht ausführbar machen."
    nohup "$script_path" &> /dev/null &
    if [[ $? -ne 0 ]]; then
        error "Konnte Prozess nicht starten."
    fi

    status "Flag in laufendem Prozess erfolgreich eingerichtet."
}

# Funktion: Flag im root-Home-Verzeichnis hinzufügen
setup_flag_root_home() {
    local root_flag_file="/root/root_flag.txt"
    local flag_content="FLAG{root_privilege_required}"

    status "Richte Flag im Home-Verzeichnis von root ein..."

    echo "$flag_content" > "$root_flag_file" || error "Konnte $root_flag_file nicht erstellen."
    chmod 400 "$root_flag_file" || error "Konnte Berechtigungen für $root_flag_file nicht setzen."
    chown root:root "$root_flag_file" || error "Konnte Besitzer von $root_flag_file nicht ändern."

    status "Flag im Home-Verzeichnis von root erfolgreich eingerichtet."
}

# Funktion: Entferne den Benutzer 'ubuntu' aus der Sudo-Gruppe
remove_ubuntu_from_sudo() {
    status "Entferne Benutzer 'ubuntu' aus der Sudo-Gruppe..."

    if id "ubuntu" &>/dev/null; then
        deluser ubuntu sudo || error "Konnte 'ubuntu' nicht aus der Sudo-Gruppe entfernen."
        status "Benutzer 'ubuntu' wurde erfolgreich aus der Sudo-Gruppe entfernt."
    else
        status "Benutzer 'ubuntu' existiert nicht. Keine Aktion erforderlich."
    fi
}

# Hauptprogramm
main() {
    local setup_done_flag="/opt/ctf_setup_done.flag"

    if [[ -f "$setup_done_flag" ]]; then
        status "Setup wurde bereits ausgeführt."
    else
        status "Starte vollständiges CTF-Setup..."

        # Prüfen, ob das Skript als root ausgeführt wird
        if [[ $EUID -ne 0 ]]; then
            error "Dieses Skript muss als root ausgeführt werden."
        fi

        # Benutzer erstellen
        local user1=$(generate_random_username)
        local user2=$(generate_random_username)

        while [[ "$user1" == "$user2" ]]; do
            user2=$(generate_random_username)
        done

        check_and_create_user "$user1"
        check_and_create_user "$user2"


        # Flags einrichten
        setup_flag_sudo "$user1"
        setup_flag_history "$user1"
        setup_flag_tmp
        setup_flag_process
        setup_flag_root_home

        # Benutzer 'ubuntu' aus der Sudo-Gruppe entfernen
        remove_ubuntu_from_sudo

        # Benutzername von user2 speichern
        echo "$user2" > /opt/ctf_user2_name

        # Setup als abgeschlossen markieren
        touch "$setup_done_flag"

        status "CTF-Setup abgeschlossen. Viel Erfolg bei der Challenge!"
    fi
}

main
status "CTF-Setup wird gestartet!"
sudo -u "$(cat /opt/ctf_user2_name)" python3 /bin/ctf_server.py

````
![](https://i.imgur.com/MdnTea6.png)
