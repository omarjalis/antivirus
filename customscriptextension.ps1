# Enable Windows Defender settings
Set-MpPreference -DisableRealtimeMonitoring $false -Force
Set-MpPreference -CloudBlockLevel 0 -Force
Set-MpPreference -MAPSReporting 1 -Force
Set-MpPreference -SubmitSamplesConsent 1 -Force


# Uninstall ClamWin antivirus if it exists
$clamWinUninstallPath = "C:\Program Files (x86)\ClamWin\unins000.exe"
if (Test-Path $clamWinUninstallPath) {
    Start-Process -FilePath $clamWinUninstallPath -ArgumentList "/SILENT" -Wait
    Write-Output "ClamWin antivirus has been uninstalled."
} else {
    Write-Output "ClamWin antivirus is not installed."
}
