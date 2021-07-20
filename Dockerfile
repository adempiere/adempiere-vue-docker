FROM nginx:1.19.9-alpine

LABEL maintainer="EdwinBetanc0urt@outlook.com" \
	description="ADempiere-Vue"

# Add operative system dependencies
RUN	echo rm -rf /var/cache/apk/* && \
	apk update && \
	apk add \
		--virtual .build-deps \
	 	ca-certificates \
	 	curl \
		unzip

ARG RELEASE_VERSION="rt-4.7"

ENV URL_REPO="https://github.com/adempiere/adempiere-vue" \
	BINARY_NAME="Adempiere-Vue.zip" \
	API_URL="https://api.erpya.com"

COPY start.sh .

# Create app directory
RUN cd /usr/share/nginx/html && \
	# Download release file
	curl --output $BINARY_NAME \
		-L "$URL_REPO/releases/download/$RELEASE_VERSION/$BINARY_NAME" && \
	# uncompress and delete files
	unzip -o $BINARY_NAME && \
	# delete unised files
	apk del .build-deps && \
	rm $BINARY_NAME && \
	rm -rf /tmp/* && \
	# Rename project folder
	mv dist/* /usr/share/nginx/html/

CMD 'sh' 'start.sh'
