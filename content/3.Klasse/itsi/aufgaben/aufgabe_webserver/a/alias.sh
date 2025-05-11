#!/bin/bash

alias relaunch="sh -c 'docker stop itsi && docker rm itsi && ./build.sh && docker compose up -d && docker exec -it itsi /bin/bash'"
alias rebuild="sh -c './build.sh && docker compose up -d && docker exec -it itsi /bin/bash'"
alias stop="sh -c 'docker compose down'"

