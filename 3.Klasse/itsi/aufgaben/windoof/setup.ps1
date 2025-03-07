Install-WindowsFeature BitLocker, BitLocker-NetworkUnlock
Rename-Computer -NewName "fus-win-12" -Force
$Action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-file C:\Users\Administrator\script.ps1"
$Trigger = New-ScheduledTaskTrigger -AtStartup
$Settings = New-ScheduledTaskSettingsSet
Register-ScheduledTask -TaskName "after-setup" -Action $Action -Trigger $Trigger -Settings $Settings
$url = "https://raw.githubusercontent.com/Stefanistkuhl/obsidianschule/46ae36051d646a7110d6473d6ec8ab69456b1829/3.Klasse/itsi/aufgaben/windoof/script.ps1"
$dest = "C:\Users\Administrator\script.ps1"
Invoke-WebRequest -Uri $url -OutFile $dest
Restart-Computer
