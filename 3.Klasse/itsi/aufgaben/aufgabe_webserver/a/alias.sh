#!/bin/bash

alias relaunch="sh -c 'docker stop itsi && docker rm itsi && docker buildx build -t itsi:latest . && docker compose up -d && docker exec -it itsi /bin/bash'"
alias rebuild="sh -c 'docker buildx build -t itsi:latest . && docker compose up -d && docker exec -it itsi /bin/bash'"
alias stop="sh -c 'docker compose down'"

