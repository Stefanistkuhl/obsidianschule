---
tags: []
---
### Enumeration
https://github.com/diego-treitos/linux-smart-enumeration
![](https://i.imgur.com/F9zDkLn.png)
![](https://i.imgur.com/O633WLy.png)
![](https://i.imgur.com/5a7zB2e.png)
![](https://i.imgur.com/hsFafaf.png)

/snap/docker/2963/usr/share/man/man8/zstreamdump.8.gz
nichts drin

cron dir schreibar
vlt ja einen job hinzufügen in hourly oder ähnliches

tmux und screen session

/snap/snapd/23545/usr/lib/snapd/snap-confine
/snap/snapd/23258/usr/lib/snapd/snap-confine
![](https://i.imgur.com/yHloWk4.png)
https://github.com/deeexcee-io/CVE-2021-44731-snap-confine-SUID/blob/main/snap_confine_LPE.sh
![](https://i.imgur.com/DNnqfLF.png)
![](https://i.imgur.com/LavBRO0.png)
pfad geändert
![](https://i.imgur.com/3Cci0Ko.png)
prozesse
```
---
[i] pro510 Running process binaries and permissions........................ yes!
---
-rwxr-xr-x 1 root root  1446024 Mar 31  2024 /bin/bash
lrwxrwxrwx 1 root root        4 Mar 31  2024 /bin/sh -> dash
-rwxr-xr-x 1 root root    60992 Aug  9 02:33 /sbin/agetty
lrwxrwxrwx 1 root root       22 Aug  8 14:51 /sbin/init -> ../lib/systemd/systemd
-rwxr-xr-x 1 root root   145880 Apr  7  2024 /sbin/multipathd
lrwxrwxrwx 1 root root       13 Jan  8 13:36 /snap/bin/docker -> /usr/bin/snap
-rwxr-xr-x 1 root root 39028584 Sep  6 19:08 /snap/docker/2963/bin/docker
-rwsr-xr-x 1 root root   180752 Dec  4 09:13 /snap/snapd/23545/usr/lib/snapd/snap-confine
-rwxr-xr-x 1 root root  1446024 Mar 31  2024 /usr/bin/bash
-rwxr-xr-x 1 root root   236176 Aug  9 02:33 /usr/bin/dbus-daemon
-rwxr-xr-x 1 root root   204264 Apr  8  2024 /usr/bin/find
-rwxr-xr-x 1 root root   366096 Apr  6  2024 /usr/bin/gpg-agent
-rwxr-xr-x 1 root root   186824 Apr  8  2024 /usr/bin/grep
-rwxr-xr-x 1 root root    35336 Apr  5  2024 /usr/bin/groups
lrwxrwxrwx 1 root root       10 Aug  7 17:44 /usr/bin/python3 -> python3.12
lrwxrwxrwx 1 root root       10 Aug  7 17:44 /usr/bin/python3 -> python3.12
-rwxr-xr-x 1 root root    51720 Apr  5  2024 /usr/bin/seq
-rwxr-xr-x 1 root root    35336 Apr  5  2024 /usr/bin/sleep
-rwxr-xr-x 1 root root   105272 Apr  5  2024 /usr/bin/sort
-rwxr-xr-x 1 root root   132168 Mar 31  2024 /usr/bin/ss
-rwsr-xr-x 1 root root   277936 Apr  8  2024 /usr/bin/sudo
-rwxr-xr-x 1 root root  1501304 Aug  8 14:51 /usr/bin/systemctl
-rwxr-xr-x 1 root root    39432 Apr  5  2024 /usr/bin/uniq
-rwxr-xr-x 1 root root    27008 Mar 31  2024 /usr/bin/w
-rwxr-xr-x 1 root root    76160 Aug 27 14:26 /usr/libexec/fwupd/fwupd
-rwxr-xr-x 1 root root   547840 Aug 27 14:26 /usr/libexec/udisks2/udisksd
-rwxr-xr-x 1 root root   145856 Apr  8  2024 /usr/libexec/upowerd
-rwxr-xr-x 1 root root   125536 Apr  3  2024 /usr/lib/polkit-1/polkitd
-rwxr-xr-x 1 root root 23575272 Aug 20 22:39 /usr/lib/snapd/snapd
-rwxr-xr-x 1 root root  5101016 Aug 20 22:39 /usr/lib/snapd/snap-exec
-rwxr-xr-x 1 root root   100816 Aug  8 14:51 /usr/lib/systemd/systemd
-rwxr-xr-x 1 root root   193664 Aug  8 14:51 /usr/lib/systemd/systemd-journald
-rwxr-xr-x 1 root root   285264 Aug  8 14:51 /usr/lib/systemd/systemd-logind
-rwxr-xr-x 1 root root  1657576 Aug  8 14:51 /usr/lib/systemd/systemd-networkd
-rwxr-xr-x 1 root root   535048 Aug  8 14:51 /usr/lib/systemd/systemd-resolved
-rwxr-xr-x 1 root root    59688 Aug  8 14:51 /usr/lib/systemd/systemd-timesyncd
lrwxrwxrwx 1 root root       17 Aug  8 14:51 /usr/lib/systemd/systemd-udevd -> ../../bin/udevadm
-rwxr-xr-x 1 root root    60080 Aug 27 14:26 /usr/sbin/cron
-rwxr-xr-x 1 root root    14648 Apr  8  2024 /usr/sbin/getcap
lrwxrwxrwx 1 root root        7 Mar 31  2024 /usr/sbin/ip -> /bin/ip
-rwxr-xr-x 1 root root  2165576 Aug 27 14:26 /usr/sbin/ModemManager
-rwxr-xr-x 1 root root   790192 Aug 27 14:26 /usr/sbin/rsyslogd

```
### Metaspoloit
https://github.com/rapid7/metasploit-framework/blob/master/documentation/modules/payload/linux/x86/meterpreter/reverse_tcp.md
![](https://i.imgur.com/jrRxLCJ.png)
![](https://i.imgur.com/z4GH9gS.png)
![](https://i.imgur.com/u5IPzTU.png)
![](https://i.imgur.com/d7BFPLf.png)
![](https://i.imgur.com/ipbLZcs.png)
![](https://i.imgur.com/Ll0fpsq.png)
`getsystem` and `priv module not working`
https://www.offsec.com/metasploit-unleashed/privilege-escalation/
https://null-byte.wonderhowto.com/how-to/get-root-with-metasploits-local-exploit-suggester-0199463/
### cheeseing
![](https://i.imgur.com/KVm5tNE.png)
![](https://i.imgur.com/jjWq4SC.png)
![](https://i.imgur.com/uL97iZY.png)
![](https://i.imgur.com/OzNwuu7.png)
funktioniert nicht
![](https://i.imgur.com/YNCbylp.png)
![](https://i.imgur.com/25myDQU.png)
![](https://i.imgur.com/dP6q0Qv.png)
![](https://i.imgur.com/das4VRz.png)
![](https://i.imgur.com/oYcAOK8.png)
![](https://i.imgur.com/gDQjXaa.png)
![](https://i.imgur.com/KsnAgwc.png)
![](https://i.imgur.com/ukrfnMt.png)
![](https://i.imgur.com/vvqHK0T.png)
![](https://i.imgur.com/AyXpJWX.png)
![](https://i.imgur.com/9Jdsj8k.png)
![](https://i.imgur.com/EM5QJMF.png)
![](https://i.imgur.com/QH5ri9x.png)
![](https://i.imgur.com/3zMFSdJ.png)
![](https://i.imgur.com/1PESSmT.png)
![](https://i.imgur.com/AQvwUsw.png)
![](https://i.imgur.com/g8LLTz8.png)
![](https://i.imgur.com/ld7yywm.png)
![](https://i.imgur.com/MdnTea6.png)
