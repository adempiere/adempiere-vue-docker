FROM node:12-alpine3.12

LABEL maintainer="EdwinBetanc0urt@outlook.com" \
	description="ADempiere-Vue"

ARG RELEASE_VERSION="rt-1.2"

ENV URL_REPO="https://github.com/adempiere/adempiere-vue" \
	BINARY_NAME="adempiere-vue-$RELEASE_VERSION.zip" \
	VUE_APP_API_REST_ADDRESS="http://localhost" \
	VUE_APP_API_REST_PORT="8085"

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
	# TODO: Generate releases versions with that include libraries and compiled files ready for production
	npm install

WORKDIR /opt/Apps/adempiere-vue

CMD npm run preview
