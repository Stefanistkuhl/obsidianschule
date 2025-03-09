Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force
Install-WindowsFeature BitLocker, BitLocker-NetworkUnlock
Rename-Computer -NewName "fus-win-12" -Force
$Action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-file C:\Users\Administrator\script.ps1"
$Trigger = New-ScheduledTaskTrigger -AtLogon -User "Administrator"
$Settings = New-ScheduledTaskSettingsSet
Register-ScheduledTask -TaskName "after-setup" -Action $Action -Trigger $Trigger -Settings $Settings
$url = "https://raw.githubusercontent.com/Stefanistkuhl/obsidianschule/refs/heads/main/3.Klasse/itsi/aufgaben/windoof/script.ps1"
$dest = "C:\Users\Administrator\script.ps1"
Invoke-WebRequest -Uri $url -OutFile $dest
Restart-Computer
