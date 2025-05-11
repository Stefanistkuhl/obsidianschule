FROM ubuntu:latest

ARG ROOT_PW
ARG RAM_WEBUSER_PW
ARG ZIVK_WEBUSER_PW
ARG RAM_FUS_PW
ARG RAM_RAM_PW
ARG RAM_ALOIS_PW
ARG RAM_CHRIS_PW
ARG RAM_BERTA_PW

RUN apt update 
RUN apt upgrade -y 

# Install packages individually with explanatory comments
# Network tools
RUN apt install -y iproute2
RUN apt install -y iputils-ping
RUN apt install -y net-tools
RUN apt install -y curl

# Shell and editors
RUN apt install -y zsh
RUN apt install -y nano
RUN apt install -y vim
RUN apt install -y git

# Security and authentication
RUN apt install -y sudo
RUN apt install -y libpam-pwquality
RUN apt install -y libpam-google-authenticator

# Web server and utilities
RUN apt install -y nginx
RUN apt install -y php-fpm
RUN apt install -y apache2-utils
RUN apt install -y certbot python3-certbot-nginx

RUN rm -rf /var/www/html/
RUN mkdir -p /var/www/metyr.xyz/html
RUN rm /etc/nginx/sites-available/default
RUN rm /etc/nginx/sites-enabled/default
COPY ./mapped-files/metyr.xyz /etc/nginx/sites-available/metyr.xyz
RUN ln -s /etc/nginx/sites-available/metyr.xyz /etc/nginx/sites-enabled/metyr.xyz
RUN echo -n "$RAM_WEBUSER_PW" | htpasswd -i -c /etc/apache2/.htpasswd ram-webuser
RUN echo -n "$ZIVK_WEBUSER_PW" | htpasswd -i /etc/apache2/.htpasswd zivk-webuser
COPY ./mapped-files/dhparam.pem /etc/nginx/dhparam.pem
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=AT/ST=Vienna/L=Vienna/O=RAM/OU=7/CN=metyr.xyz/emailAddress=wedm1ebmf@mozmail.com"

RUN echo "ram-alois ALL=(root) /bin/nano /etc/ssh/sshd_config" >> /etc/sudoers
RUN echo "ram-berta ALL=(root) /sbin/useradd" >> /etc/sudoers
RUN echo "ram-ram ALL=(root) /bin/ls" >> /etc/sudoers
RUN echo "ram-ram ALL=(root) /bin/cat" >> /etc/sudoers

RUN ln -fs /usr/share/zoneinfo/Europe/Vienna /etc/localtime

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata ssh

RUN echo 'root:$ROOT_PW' | chpasswd

RUN sed -i 's/#Port 22/Port 38452/' /etc/ssh/sshd_config
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i '/retry=3/ s/$/ucredit=-1 dcredit=-1 ocredit=-1 minlen=10/' /etc/pam.d/common-password
RUN sed -i '/ocredit=-1/ a password\trequisite\t\t\tpam_pwhistory.so remember=5 use_authtok' /etc/pam.d/common-password

RUN groupadd -g 324 ram-Users 
RUN useradd -u 1024 -m ram-alois 
RUN useradd -u 1124 -m ram-berta 
RUN useradd -u 1224 -m ram-chris 
RUN useradd -m ram-fus 
RUN useradd -m ram-ram

RUN echo 'ram-fus:$RAM_FUS_PW' | chpasswd
RUN echo 'ram-ram:$RAM_RAM_PW' | chpasswd
RUN echo 'ram-alois:$RAM_ALOIS_PW' | chpasswd
RUN echo 'ram-chris:$RAM_CHRIS_PW' | chpasswd
RUN echo 'ram-berta:$RAM_BERTA_PW' | chpasswd

#nvim
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
RUN rm -rf /opt/nvim
RUN tar -C /opt -xzf nvim-linux64.tar.gz
RUN echo "export PATH="$PATH:/opt/nvim-linux64/bin"" >> /root/.bashrc
# RUN mkdir -p /root/.config/ && cd /root/.config/ && git clone https://github.com/Stefanistkuhl/nvim
COPY ./mapped-files/authorized_keys /root/.ssh/authorized_keys
COPY ./mapped-files/authorized_keys /home/ram-fus/.ssh/authorized_keys
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

EXPOSE 38452 80 443

CMD service ssh start && service nginx start && service php8.3-fpm start && tail -F /dev/null
