#!/bin/bash
# 2024-04-03 Marco Auer
# man errät zahlen
# keine Parameter

zielzahl=$(($RANDOM %20))

aversuch=0

echo "Der Computer hat eine Zahl zwischen 1 und 20 generiert."
echo "Versuche, die Zahl zu erraten!"

# Rundenschleife
while true; do
    read -p "Gib eine Zahl zwischen 1 und 20 ein: " versuch
    ((aversuch ++))

    # Überprüfe, ob die Eingabe eine Zahl zwischen 1 und 20 ist
    if [[ (( $versuch -gt 0 && $versuch -lt 21 )) ]]; then
        # Vergleiche den Versuch mit der Zielzahl
        if (( versuch == zielzahl )); then
            echo "Herzlichen Glückwunsch! Du hast die Zahl erraten!"
            echo "Versuch/e: ${aversuch}"
            exit 0
        elif (( versuch > zielzahl )); then
            echo "Die Zahl ist zu hoch. Versuche es erneut."
            echo "Versuch/e: ${aversuch}"
        else
            echo "Die Zahl ist zu niedrig. Versuche es erneut."
            echo "Versuch/e: ${aversuch}"
        fi
    else
        echo "Ungültige Eingabe! Bitte gib eine Zahl zwischen 1 und 20 ein."
    fi
done