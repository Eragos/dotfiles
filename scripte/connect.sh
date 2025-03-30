#!/bin/sh

PS3='Bitte wählen: '
options=("SSH Helix" "SSH Pi-Hole" "Quit")
select opt in "${options[@]}"

do
    case $opt in
        "SSH Helix")
            ssh helix.lan
            ;;
        "SSH Pi-Hole")
            ssh pi@raspberry.lan
            ;;
        "Quit")
            break
            ;;
        *) echo "Ungültige Auswahl $REPLY";;
    esac
done
