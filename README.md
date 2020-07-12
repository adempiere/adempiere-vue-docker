# ADempiere-Vue Docker Official Repository

[![Join the chat at https://gitter.im/adempiere/adempiere-docker](https://badges.gitter.im/adempiere/adempiere-docker.svg)](https://gitter.im/adempiere/adempiere-docker?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Welcome to the official repository for [ADempiere-Vue](https://github.com/adempiere/adempiere-vue) Docker. This project is related
with the maintenance of an official image for [ADempiere-Vue](https://github.com/adempiere/adempiere-vue).

## Minimal Docker Requirements

To use this Docker image you must have your Docker engine release number greater
than or equal to 3.0.


## Run docker container:

Build docker image:
```shell
docker build -it adempiere-vue -f ./Dockerfile .
```

Run container container:
```shell
docker run --name adempiere-ui-client -it \
	-p 9526:9526 \
	-v /opt/Apps/adempiere-vue \
	adempiere-vue
```

## Run docker container with docker-compose:
Or easy run container using docker-compose with follow command:
```shell
docker-compose up
```
