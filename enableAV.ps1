# Enable Windows Defender settings
Set-MpPreference -DisableRealtimeMonitoring $false -Force
Set-MpPreference -MAPSReporting 1 -Force

Write-Output "Windows Defender settings have been configured."
