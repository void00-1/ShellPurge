# ShellPurge - Scannt und entfernt automatisch infizierte Dateien via ClamAV

param(
    [Parameter(Mandatory=$true)]
    [string]$Path
)

if (-not (Get-Command clamscan.exe -ErrorAction SilentlyContinue)) {
    Write-Host "Fehler: clamscan.exe nicht gefunden. Bitte ClamAV für Windows installieren."
    exit 1
}

Write-Host "Scanne $Path und entferne infizierte Dateien ..."
clamscan.exe -r --infected --remove=yes $Path
