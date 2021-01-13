# ADempiere-Vue Docker Official Repository

<div align="center"><img src="https://camo.githubusercontent.com/911c5d54ded447403e56de3f96f332c06bceb8bd/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f622f62312f4164656d70696572652d6c6f676f2e706e67" style="text-align:center;" width="400" /></div>

![version](https://img.shields.io/badge/node-v12.x-blue.svg)

[![Join the chat at https://gitter.im/adempiere/adempiere-docker](https://badges.gitter.im/adempiere/adempiere-docker.svg)](https://gitter.im/adempiere/adempiere-docker?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Welcome to the official repository for [ADempiere-Vue](https://github.com/adempiere/adempiere-vue) Docker. This project is related
with the maintenance of an official image for [ADempiere-Vue](https://github.com/adempiere/adempiere-vue).

## Minimal Docker Requirements

To use this Docker image you must have your Docker engine release number greater
than or equal to 3.0.

### For all enviroment you should run the follow images:
- ADempiere gRPC: https://hub.docker.com/r/erpya/adempiere-grpc-all-in-one
```shell
docker pull erpya/adempiere-grpc-all-in-one
```
- Proxy ADempiere API: https://hub.docker.com/r/erpya/proxy-adempiere-api
```shell
docker pull erpya/proxy-adempiere-api
```
- ADempiere Vue: https://hub.docker.com/r/erpya/adempiere-vue
```shell
docker pull erpya/adempiere-vue
```

## Run docker container:

Build docker image (for development only):
```shell
docker build -t erpya/adempiere-vue:dev -f ./Dockerfile .
```

Download docker image:
```shell
docker pull erpya/adempiere-vue
```

Run container container:
```shell
docker run -it \
	--name adempiere-vue \
	-p 9526:9526 \
	-e VUE_APP_API_REST_ADDRESS="//localhost" \
	-e VUE_APP_API_REST_PORT=8085 \
    -e API_HOST="//localhost" \
    -e IMAGE_HOST="//localhost" \
	erpya/adempiere-vue
```


## Environment variables for the configuration

 * `VUE_APP_API_REST_ADDRESS`: It indicates the address of the server to which you will point the service [Proxy-Adempiere-Api](https://github.com/adempiere/proxy-adempiere-api), by default its value is `http://localhost`.
 * `VUE_APP_API_REST_PORT`: It indicates the port that the [Proxy-Adempiere-Api](https://github.com/adempiere/proxy-adempiere-api) will access, by default its value is `8085`.

NOTE: If you do not change the values of the environment variables, it is not necessary to indicate them in the `docker run` command, since the default values will be set.


## Run docker container with docker-compose:
Or easy run container using docker-compose with follow command:
```shell
docker-compose up
```

Terminal output:
```shell
Building web-client
Step 1/8 : FROM node:12-alpine
 ---> 057fa4cc38c2
Step 2/8 : LABEL maintainer="EdwinBetanc0urt@outlook.com"       description="ADempiere-Vue"
 ---> Running in d096cf76ce2d
Removing intermediate container d096cf76ce2d
 ---> 46cc05704121
Step 3/8 : ENV RELEASE_VERSION="3.9.3"
 ---> Running in 9048d159aaf9
Removing intermediate container 9048d159aaf9
 ---> a19699234a5d
Step 4/8 : ENV URL_REPO="https://github.com/adempiere/adempiere-vue"    BINARY_NAME="v$RELEASE_VERSION.zip"     VUE_APP_PROXY_ADDRESS="localhost"       VUE_APP_PROXY_PORT="8989"
 ---> Running in c703a3818cbf
Removing intermediate container c703a3818cbf
 ---> 86b0c2b269c6
Step 5/8 : RUN mkdir -p /opt/Apps &&    cd /opt/Apps &&         echo "Install needed packages... $BINARY_NAME $RELEASE_VERSION" &&      apk --no-cache add curl unzip &&        curl --output "$BINARY_NAME" -L "$URL_REPO/archive/$BINARY_NAME" &&     unzip -o "$BINARY_NAME" &&      rm "$BINARY_NAME" &&    mv "adempiere-vue-$RELEASE_VERSION" adempiere-vue &&    cd adempiere-vue &&    npm install &&   npm run build:prod
 ---> Running in 6f3cb21924dd
Install needed packages... v3.9.3.zip 3.9.3
fetch http://dl-cdn.alpinelinux.org/alpine/v3.11/main/x86_64/APKINDEX.tar.gz
fetch http://dl-cdn.alpinelinux.org/alpine/v3.11/community/x86_64/APKINDEX.tar.gz
(1/5) Installing ca-certificates (20191127-r2)
(2/5) Installing nghttp2-libs (1.40.0-r1)
(3/5) Installing libcurl (7.67.0-r0)
(4/5) Installing curl (7.67.0-r0)
(5/5) Installing unzip (6.0-r6)
Executing busybox-1.31.1-r9.trigger
Executing ca-certificates-20191127-r2.trigger
OK: 9 MiB in 21 packages
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   128  100   128    0     0    149      0 --:--:-- --:--:-- --:--:--   149
100  916k    0  916k    0     0   180k      0 --:--:--  0:00:05 --:--:--  254k
Archive:  v3.9.3.zip
1d684b76328e3f6bcd3f75ea011087cce1c13a3c
   creating: adempiere-vue-3.9.3/
  inflating: adempiere-vue-3.9.3/.babelrc
  inflating: adempiere-vue-3.9.3/.editorconfig
adempiere-ui-client |
adempiere-ui-client | > Listening at  http://localhost:9526/

```
