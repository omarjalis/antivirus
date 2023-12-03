# Uninstall ClamWin antivirus if it exists
$clamWinUninstallPath = "C:\Program Files (x86)\ClamWin\unins000.exe"
if (Test-Path $clamWinUninstallPath) {
    Start-Process -FilePath $clamWinUninstallPath -ArgumentList "/SILENT" -Wait -NoNewWindow
    Write-Output "ClamWin antivirus has been uninstalled."
} else {
    Write-Output "ClamWin antivirus is not installed."
}

Write-Output "Script execution completed."
