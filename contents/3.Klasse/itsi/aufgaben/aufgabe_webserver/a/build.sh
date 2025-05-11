#!/bin/bash
export $(cat .env | xargs)

docker buildx build -t itsi:latest\
	--build-arg ROOT_PW=$ROOT_PW \
	--build-arg RAM_WEBUSER_PW=$RAM_WEBUSER_PW \
	--build-arg ZIVK_WEBUSER_PW=$ZIVK_WEBUSER_PW \
	--build-arg RAM_FUS_PW=$RAM_FUS_PW \
	--build-arg RAM_RAM_PW=$RAM_RAM_PW \
	--build-arg RAM_ALOIS_PW=$RAM_ALOIS_PW \
	--build-arg RAM_CHRIS_PW=$RAM_CHRIS_PW \
	--build-arg RAM_BERTA_PW=$RAM_BERTA_PW .
