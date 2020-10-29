# ADempiere-Vue Docker Official Repository

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
