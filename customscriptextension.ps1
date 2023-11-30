# Enable Windows Defender settings
Set-MpPreference -DisableRealtimeMonitoring $false -Force
Set-MpPreference -MAPSReporting 1 -Force

Write-Output "Windows Defender settings have been configured."

# Uninstall ClamWin antivirus if it exists
$clamWinUninstallPath = "C:\Program Files (x86)\ClamWin\unins000.exe"
if (Test-Path $clamWinUninstallPath) {
    Start-Process -FilePath $clamWinUninstallPath -ArgumentList "/SILENT" -Wait -NoNewWindow
    Write-Output "ClamWin antivirus has been uninstalled."
} else {
    Write-Output "ClamWin antivirus is not installed."
}

Write-Output "Script execution completed."
