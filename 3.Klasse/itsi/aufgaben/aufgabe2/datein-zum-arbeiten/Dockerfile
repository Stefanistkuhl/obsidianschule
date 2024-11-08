FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install iproute2 iputils-ping zsh net-tools vim sudo -y
RUN ln -fs /usr/share/zoneinfo/Europe/Vienna /etc/localtime
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata ssh
RUN echo 'root:password' | chpasswd
RUN sed -i 's/#Port 22/Port 38452/' /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN groupadd -g 324 ram-Users && useradd -u 1024 -m ram-alois && useradd -u 1124 -m ram-berta && useradd -u -m 1224 ram-chris && useradd -m ram-fus && useradd -m ram-ram
RUN echo 'ram-fus:password' | chpasswd
RUN echo 'ram-ram:password' | chpasswd
RUN usermod -g ram-Users ram-alois && usermod -g ram-Users ram-berta
RUN usermod --shell /bin/bash ram-alois && usermod --shell /bin/bash ram-berta && usermod --shell /bin/zsh ram-chris 
RUN usermod -aG sudo ram-fus && usermod -aG sudo ram-ram
RUN mkdir -p /data/fus && mkdir /data/fus/alois && mkdir /data/fus/berta && mkdir /data/fus/chris && mkdir /data/fus/public
RUN chgrp -R ram-Users /data/fus/ && chmod g+rw /data/fus/ && chown -R ram-alois:ram-Users /data/fus/alois/ && chmod -R u+wrx,g=r,o= /data/fus/alois/ &&  chown -R ram-berta:ram-Users /data/fus/berta/ && chmod -R u+wrx,g=r,o= /data/fus/berta/ &&  chown -R ram-chris:ram-Users /data/fus/chris/ &&  chmod -R u+wrx,g=,o= /data/fus/chris/ &&  chmod -R u+wrx,g+wrx,o=r /data/fus/public/
EXPOSE 38452
CMD service ssh start && tail -F /dev/null
