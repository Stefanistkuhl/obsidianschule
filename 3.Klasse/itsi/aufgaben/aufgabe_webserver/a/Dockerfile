FROM ubuntu:latest

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
RUN echo -n "p8oz487ofzWKMhK7yJ39EVwYaOqb5SfM1!^*eRCA6^VH6a&txN28S46Ayel49@tY5wAbt" | htpasswd -i -c /etc/apache2/.htpasswd ram-webuser
RUN echo -n "V&infRARtzDuGzYroWgfPw0#^tH5WDlzu6As%E^ME0q7jKzB5KZ4vjc5hRTslDi&GyRWl" | htpasswd -i /etc/apache2/.htpasswd zivk-webuser
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

RUN echo 'root:e2RFgRj#4S8gh9Hmy3i*qukK^@Kjy!ZP!KJGaemzCUFk3vzC7NKSp06P^5ioW1fn!T7Sx' | chpasswd

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

RUN echo 'ram-fus:sCF&uhAxVD6AJT1CRdJE^0zE&SvuEGhgtqX52EcPvLTIEe42x^am$mf5!unp53R#ZkmhD' | chpasswd
RUN echo 'ram-ram:%Q6NPj67q&#6UAJTXIKyVv6C9Fogv@MCAPzZ$qFkYN5&W$g1*GM4m4gqnGIHWov%YOi*W' | chpasswd
RUN echo 'ram-alois:#jzG&^26&yEEJ%h0jP7wOAa$mmeBqLiB6oTC#238k*^WS7SwWK89h6r@B8*IUz5SNfnY0' | chpasswd
RUN echo 'ram-chris:YuPWeKAXrGa**BMW2ddqPz3kX3Fdgx^zs70CCvK*OUCQOBO2Hf%r@$IRbicU7nhGt#sNZ' | chpasswd
RUN echo 'ram-berta:8#dv1OStGk*R@hRVoITH77YkBZVBf*sWYq2#tdbx2AQ0Pswjkrt&8dXRPwVH5XiTNMxYG' | chpasswd

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
