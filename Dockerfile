FROM node:12-alpine3.12

LABEL maintainer="EdwinBetanc0urt@outlook.com" \
	description="ADempiere-Vue"

ARG RELEASE_VERSION="rt-1.2"

ENV URL_REPO="https://github.com/adempiere/adempiere-vue" \
	BINARY_NAME="adempiere-vue-$RELEASE_VERSION.zip" \
	SERVER_HOST="localhost" \
	SERVER_PORT="9527" \
	API_HOST="localhost" \
	API_PORT="8085" \
	IMAGE_HOST="localhost" \
	IMAGE_PORT="8085" \


COPY default.json /tmp/

# Create app directory
RUN mkdir -p /opt/Apps && \
	cd /opt/Apps && \
	# Install needed SO packages
	apk add --no-cache \
		ca-certificates \
		curl \
		g++ \
		git \
		unzip && \
	# Download release file
	curl --output $BINARY_NAME \
		-L "$URL_REPO/archive/$RELEASE_VERSION.zip" && \
	# uncompress and delete files
	unzip -o $BINARY_NAME && \
	rm $BINARY_NAME && \
	# Rename project folder
	mv "adempiere-vue-$RELEASE_VERSION" adempiere-vue && \
	# Change workdir
	cd /opt/Apps/adempiere-vue && \
	cp /tmp/default.json config/
	# TODO: Generate releases versions with that include libraries and compiled files ready for production
	npm install

WORKDIR /opt/Apps/adempiere-vue

CMD sed -i "s|SERVER_HOST|$SERVER_HOST|g" config/default.json && \
    sed -i "s|SERVER_PORT|$SERVER_PORT|g" config/default.json && \
    sed -i "s|API_HOST|$API_HOST|g" config/default.json && \
    sed -i "s|API_PORT|$API_PORT|g" config/default.json && \
    sed -i "s|IMAGE_HOST|$IMAGE_HOST|g" config/default.json && \ 
    sed -i "s|IMAGE_PORT|$IMAGE_PORT|g" config/default.json && \ 
npm run preview
