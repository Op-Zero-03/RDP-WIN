$regPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'

if (-not (Test-Path $regPath)) {
    New-Item -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT' -Name 'Terminal Services' -Force
}

Set-ItemProperty -Path $regPath -Name 'fSingleSessionPerUser' -Value 0 -Force
Write-Host "fSingleSessionPerUser set to 0."
Set-ItemProperty -Path $regPath -Name 'MaxInstanceCount' -Value 900 -Force
Write-Host "MaxInstanceCount set to 900."
Import-Module ServerManager
Add-WindowsFeature RDS-RD-Server
Add-WindowsFeature RDS-Licensing
