FROM ubuntu:latest

RUN apt update 
RUN apt upgrade -y 
#nano is need since allowing sudo vim for users opens up a lot of escapes
RUN apt install iproute2 iputils-ping zsh net-tools vim sudo nano libpam-pwquality -y

RUN echo "ram-alois ALL=(root) /bin/nano /etc/ssh/sshd_config" >> /etc/sudoers
RUN echo "ram-berta ALL=(root) /sbin/useradd" >> /etc/sudoers
RUN echo "ram-ram ALL=(root) /bin/ls" >> /etc/sudoers
RUN echo "ram-ram ALL=(root) /bin/cat" >> /etc/sudoers

RUN ln -fs /usr/share/zoneinfo/Europe/Vienna /etc/localtime

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata ssh

RUN echo 'root:password' | chpasswd

RUN sed -i 's/#Port 22/Port 38452/' /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# RUN sed -i 's/password        requisite                       pam_pwquality.so retry=3/password        requisite                       pam_pwquality.so retry=3 ucredit=-1 dcredit=-1 ocredit=-1/' /etc/pam.d/common-password
# RUN sed -i 's/password        [success=1 default=ignore]      pam_unix.so obscure use_authtok try_first_pass yescrypt/password        [success=1 default=ignore]      pam_unix.so obscure use_authtok try_first_pass yescrypt minlen=10' /etc/pam.d/common-password

RUN groupadd -g 324 ram-Users 
RUN useradd -u 1024 -m ram-alois 
RUN useradd -u 1124 -m ram-berta 
RUN useradd -u 1224 -m ram-chris 
RUN useradd -m ram-fus 
RUN useradd -m ram-ram

RUN echo 'ram-fus:password' | chpasswd
RUN echo 'ram-ram:password' | chpasswd
RUN echo 'ram-alois:password' | chpasswd
RUN echo 'ram-chris:password' | chpasswd
RUN echo 'ram-berta:password' | chpasswd

RUN usermod -g ram-Users ram-alois 
RUN usermod -g ram-Users ram-berta

RUN usermod --shell /bin/bash ram-alois 
RUN usermod --shell /bin/bash ram-berta 
RUN usermod --shell /bin/zsh ram-chris 

RUN usermod -aG sudo ram-fus 
RUN usermod -aG sudo ram-ram

RUN mkdir -p /data/fus 
RUN mkdir /data/fus/alois 
RUN mkdir /data/fus/berta 
RUN mkdir /data/fus/chris 
RUN mkdir /data/fus/public

RUN chgrp -R ram-Users /data/fus/ 
RUN chmod g+rw /data/fus/ 
RUN chown -R ram-alois:ram-Users /data/fus/alois/ 
RUN chmod -R u+wrx,g=r,o= /data/fus/alois/ 
RUN chown -R ram-berta:ram-Users /data/fus/berta/ 
RUN chmod -R u+wrx,g=r,o= /data/fus/berta/ 
RUN chown -R ram-chris:ram-Users /data/fus/chris/ 
RUN chmod -R u+wrx,g=,o= /data/fus/chris/ 
RUN chmod -R u+wrx,g+wrx,o=r /data/fus/public/

EXPOSE 38452

CMD service ssh start && tail -F /dev/null

