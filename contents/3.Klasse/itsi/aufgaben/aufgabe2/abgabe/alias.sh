#!/bin/sh

alias relaunch="sh -c 'docker stop itsi && docker rm itsi && docker buildx build -t itsi:latest . && docker run -d -p 38452:38452 --name itsi itsi:latest && docker exec -it itsi /bin/bash'"
alias rebuild="sh -c 'docker buildx build -t itsi:latest . && docker run -d -p 38452:38452 --name itsi itsi:latest && docker exec -it itsi /bin/bash'"
alias stop="sh -c 'docker stop itsi && docker rm itsi'"
