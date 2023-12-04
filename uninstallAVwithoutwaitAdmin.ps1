# Request elevation to run as administrator
Start-Process powershell -Verb RunAs -ArgumentList "-ExecutionPolicy Bypass -File uninstallAVwithoutwaitAdmin.ps1"
