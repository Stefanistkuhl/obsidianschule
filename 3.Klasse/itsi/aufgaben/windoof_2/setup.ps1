Set-ExecutionPolicy RemoteSigned -Scope LocalMachine -Force
Rename-Computer -NewName "fus-win-12" -Force
$Action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-file C:\Users\Administrator\script.ps1"
$Trigger = New-ScheduledTaskTrigger -AtLogon -User "Administrator"
$Settings = New-ScheduledTaskSettingsSet
Register-ScheduledTask -TaskName "after-setup" -Action $Action -Trigger $Trigger -Settings $Settings
$url = "changelink"
$dest = "C:\Users\Administrator\script.ps1"
Invoke-WebRequest -Uri $url -OutFile $dest
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
Restart-Computer
