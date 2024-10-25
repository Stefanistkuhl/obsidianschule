FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install iputils-ping zsh net-tools vim -y
RUN ln -fs /usr/share/zoneinfo/Europe/Vienna /etc/localtime
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata ssh
RUN sed 's/#   Port 22/Port 38452/' /etc/ssh/ssh_config
RUN service ssh start
RUN groupadd -g 324 ram-Users && useradd -u 1024 ram-alois && useradd -u 1124 ram-berta && useradd -u 1224 ram-chris 
RUN usermod -g ram-Users ram-alois && usermod -g ram-Users ram-berta 
RUN usermod --shell /bin/bash ram-alois && usermod --shell /bin/bash ram-berta && usermod --shell /bin/zsh ram-chris 
RUN mkdir -p /data/nnv && mkdir /data/nnv/alois && mkdir /data/nnv/berta && mkdir /data/nnv/chris && mkdir /data/nnv/public

EXPOSE 38452
CMD tail -f /dev/null
