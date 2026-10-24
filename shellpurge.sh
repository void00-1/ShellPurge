#!/bin/bash
# ShellPurge - Scannt und entfernt automatisch infizierte Dateien via ClamAV

if ! command -v clamscan &> /dev/null; then
    echo "Fehler: clamscan nicht gefunden. Bitte ClamAV installieren (z.B. 'sudo apt install clamav')."
    exit 1
fi

if [ -z "$1" ]; then
    echo "Nutzung: ./shellpurge.sh <pfad>"
    exit 1
fi

echo "Scanne $1 und entferne infizierte Dateien ..."
clamscan -r --infected --remove=yes "$1"
