FROM node:10

ENV RELEASE_VERSION=3.9.3

# Create app directory
WORKDIR /opt/Apps

# Copy project files
RUN wget -c https://github.com/adempiere/adempiere-vue/archive/v$RELEASE_VERSION.tar.gz

# uncompress and delete files
RUN tar -zxvf v$RELEASE_VERSION.tar.gz \
&& rm v$RELEASE_VERSION.tar.gz \
&& mv adempiere-vue-$RELEASE_VERSION adempiere-vue

WORKDIR /opt/Apps/adempiere-vue

# TODO: Generate releases with versions that include libraries and compiled files ready for production
# Install app dependencies
RUN npm install
# RUN npm run build:prod

EXPOSE 9526 9527

# CMD npm run preview
CMD npm run dev
