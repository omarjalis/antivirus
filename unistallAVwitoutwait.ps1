$clamWinUninstallPath = "C:\Program Files (x86)\ClamWin\unins000.exe"
if (Test-Path $clamWinUninstallPath) {
    Start-Process -FilePath $clamWinUninstallPath -ArgumentList "/SILENT" -NoNewWindow
    Write-Host "Uninstalling ClamWin antivirus. Please wait..."
} else {
    Write-Host "ClamWin antivirus is not installed on this system."
}
