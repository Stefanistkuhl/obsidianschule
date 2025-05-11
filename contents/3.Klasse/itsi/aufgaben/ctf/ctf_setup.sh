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
