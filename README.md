# ShellPurge

A simple CLI tool that recursively scans files and folders for viruses and automatically removes infected files. ShellPurge is a lightweight wrapper around the trusted [ClamAV](https://www.clamav.net/) engine, usable from the terminal on Linux/macOS and from PowerShell on Windows.

## Requirements

ShellPurge does **not** include its own virus detection engine. You must install ClamAV separately before using it:

- **Linux (Debian/Ubuntu):** `sudo apt install clamav`
- **macOS (Homebrew):** `brew install clamav`
- **Windows:** download the installer from [clamav.net](https://www.clamav.net/downloads)

Make sure `clamscan` (or `clamscan.exe` on Windows) is available in your system `PATH`.

## Usage

### Linux / macOS
```bash
chmod +x shellpurge.sh
./shellpurge.sh <path>
```

### Windows (PowerShell)
```powershell
.\shellpurge.ps1 -Path <path>
```

## Example
```bash
./shellpurge.sh ~/Downloads
```
```powershell
.\shellpurge.ps1 -Path C:\Users\Name\Downloads
```

## ⚠️ Warning

This tool uses ClamAV's `--remove=yes` flag, which **deletes infected files immediately without confirmation**. This can be risky in case of a false positive. Consider replacing `--remove=yes` with `--move=<quarantine-folder>` to quarantine files instead of deleting them outright, especially when scanning important directories.

## License

MIT
