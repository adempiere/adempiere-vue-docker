FROM node:12-alpine

LABEL maintainer="EdwinBetanc0urt@outlook.com" \
	description="ADempiere-Vue"

ENV RELEASE_VERSION="3.9.3"
ENV URL_REPO="https://github.com/adempiere/adempiere-vue" \
	BINARY_NAME="v$RELEASE_VERSION.zip" \
	VUE_APP_PROXY_ADDRESS="localhost" \
	VUE_APP_PROXY_PORT="8989"

# Create app directory
RUN mkdir -p /opt/Apps && \
	cd /opt/Apps && \
	echo "Install needed packages..." && \
	apk --no-cache add curl unzip && \
	# Download release file
	curl --output $BINARY_NAME -L "$URL_REPO/archive/$BINARY_NAME" && \
	# uncompress and delete files
	unzip -o $BINARY_NAME && \
	rm $BINARY_NAME && \
	# Copy project files
	mv "adempiere-vue-$RELEASE_VERSION" adempiere-vue && \
	cd adempiere-vue && \
	# TODO: Generate releases versions with that include libraries and compiled files ready for production
	npm install
	# npm run build:prod

WORKDIR /opt/Apps/adempiere-vue

EXPOSE 9526

CMD npm run build:prod --preview
# TODO: Change the CMD in new relelease
# CMD npm run preview
