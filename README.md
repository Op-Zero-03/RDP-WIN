Rdp windows
multi session


# install Git 

PowerShell
```
Invoke-WebRequest -Uri "https://github.com/git-for-windows/git/releases/download/v2.42.0.windows.1/Git-2.42.0-64-bit.exe" -OutFile "$env:USERPROFILE\Desktop\GitInstaller.exe"; Start-Process "$env:USERPROFILE\Desktop\GitInstaller.exe" -ArgumentList "/VERYSILENT" -Wait

```


# Cmd

```
git clone https://github.com/Op-Zero-03/RDP-WIN.git "%USERPROFILE%\Desktop\RDP" && cd "%USERPROFILE%\Desktop\RDP" && Run_RDS_Setup.bat
```

# PowerShell

```
git clone https://github.com/Op-Zero-03/RDP-WIN.git "$env:USERPROFILE\Desktop\RDP"; Set-Location "$env:USERPROFILE\Desktop\RDP"; .\Run_RDS_Setup.bat
```
