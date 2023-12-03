# Uninstall ClamWin antivirus if it exists
$clamWinUninstallPath = "C:\Program Files (x86)\ClamWin\unins000.exe"
if (Test-Path $clamWinUninstallPath) {
    Start-Process -FilePath $clamWinUninstallPath -ArgumentList "/SILENT" -Wait -NoNewWindow
} else {
    # ClamWin antivirus is not installed
}
