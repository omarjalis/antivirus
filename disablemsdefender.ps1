Set-MpPreference -DisableRealtimeMonitoring $true -Force
Set-MpPreference -MAPSReporting 0 -Force

Write-Output "Windows Defender has been disabled."
