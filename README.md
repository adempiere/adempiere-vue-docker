# ADempiere-Vue Docker Official Repository

<div align="center"><img src="https://camo.githubusercontent.com/911c5d54ded447403e56de3f96f332c06bceb8bd/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f622f62312f4164656d70696572652d6c6f676f2e706e67" style="text-align:center;" width="400" /></div>

![version](https://img.shields.io/badge/node-v12.x-blue.svg)

[![Join the chat at https://gitter.im/adempiere/adempiere-docker](https://badges.gitter.im/adempiere/adempiere-docker.svg)](https://gitter.im/adempiere/adempiere-docker?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Welcome to the official repository for [ADempiere-Vue](https://github.com/adempiere/adempiere-vue) Docker. This project is related
with the maintenance of an official image for [ADempiere-Vue](https://github.com/adempiere/adempiere-vue).

## Minimal Docker Requirements

To use this Docker image you must have your Docker engine release number greater
than or equal to 3.0.


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
	-e VUE_APP_API_REST_ADDRESS="http://localhost" \
	-e VUE_APP_API_REST_PORT=8085 \
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
  inflating: adempiere-vue-3.9.3/.eslintignore
  inflating: adempiere-vue-3.9.3/.eslintrc.js
  inflating: adempiere-vue-3.9.3/.gitignore
  inflating: adempiere-vue-3.9.3/.postcssrc.js
  inflating: adempiere-vue-3.9.3/.travis.yml
  inflating: adempiere-vue-3.9.3/LICENSE
  inflating: adempiere-vue-3.9.3/README.md
  inflating: adempiere-vue-3.9.3/README.zh-CN.md
   creating: adempiere-vue-3.9.3/build/
  inflating: adempiere-vue-3.9.3/build/build.js
  inflating: adempiere-vue-3.9.3/build/check-versions.js
  inflating: adempiere-vue-3.9.3/build/logo.png
  inflating: adempiere-vue-3.9.3/build/utils.js
  inflating: adempiere-vue-3.9.3/build/vue-loader.conf.js
  inflating: adempiere-vue-3.9.3/build/webpack.base.conf.js
  inflating: adempiere-vue-3.9.3/build/webpack.dev.conf.js
  inflating: adempiere-vue-3.9.3/build/webpack.prod.conf.js
   creating: adempiere-vue-3.9.3/config/
  inflating: adempiere-vue-3.9.3/config/dev.env.js
  inflating: adempiere-vue-3.9.3/config/index.js
  inflating: adempiere-vue-3.9.3/config/prod.env.js
  inflating: adempiere-vue-3.9.3/config/sit.env.js
  inflating: adempiere-vue-3.9.3/favicon.ico
  inflating: adempiere-vue-3.9.3/index.html
  inflating: adempiere-vue-3.9.3/package.json
   creating: adempiere-vue-3.9.3/src/
  inflating: adempiere-vue-3.9.3/src/App.vue
   creating: adempiere-vue-3.9.3/src/api/
  inflating: adempiere-vue-3.9.3/src/api/article.js
  inflating: adempiere-vue-3.9.3/src/api/login.js
  inflating: adempiere-vue-3.9.3/src/api/qiniu.js
  inflating: adempiere-vue-3.9.3/src/api/remoteSearch.js
  inflating: adempiere-vue-3.9.3/src/api/transaction.js
   creating: adempiere-vue-3.9.3/src/assets/
   creating: adempiere-vue-3.9.3/src/assets/401_images/
  inflating: adempiere-vue-3.9.3/src/assets/401_images/401.gif
   creating: adempiere-vue-3.9.3/src/assets/404_images/
  inflating: adempiere-vue-3.9.3/src/assets/404_images/404.png
 extracting: adempiere-vue-3.9.3/src/assets/404_images/404_cloud.png
   creating: adempiere-vue-3.9.3/src/assets/custom-theme/
   creating: adempiere-vue-3.9.3/src/assets/custom-theme/fonts/
  inflating: adempiere-vue-3.9.3/src/assets/custom-theme/fonts/element-icons.ttf
  inflating: adempiere-vue-3.9.3/src/assets/custom-theme/fonts/element-icons.woff
  inflating: adempiere-vue-3.9.3/src/assets/custom-theme/index.css
   creating: adempiere-vue-3.9.3/src/components/
   creating: adempiere-vue-3.9.3/src/components/BackToTop/
  inflating: adempiere-vue-3.9.3/src/components/BackToTop/index.vue
   creating: adempiere-vue-3.9.3/src/components/Breadcrumb/
  inflating: adempiere-vue-3.9.3/src/components/Breadcrumb/index.vue
   creating: adempiere-vue-3.9.3/src/components/Charts/
  inflating: adempiere-vue-3.9.3/src/components/Charts/keyboard.vue
  inflating: adempiere-vue-3.9.3/src/components/Charts/lineMarker.vue
  inflating: adempiere-vue-3.9.3/src/components/Charts/mixChart.vue
   creating: adempiere-vue-3.9.3/src/components/Charts/mixins/
  inflating: adempiere-vue-3.9.3/src/components/Charts/mixins/resize.js
   creating: adempiere-vue-3.9.3/src/components/DndList/
  inflating: adempiere-vue-3.9.3/src/components/DndList/index.vue
   creating: adempiere-vue-3.9.3/src/components/DragSelect/
  inflating: adempiere-vue-3.9.3/src/components/DragSelect/index.vue
   creating: adempiere-vue-3.9.3/src/components/Dropzone/
  inflating: adempiere-vue-3.9.3/src/components/Dropzone/index.vue
   creating: adempiere-vue-3.9.3/src/components/ErrorLog/
  inflating: adempiere-vue-3.9.3/src/components/ErrorLog/index.vue
   creating: adempiere-vue-3.9.3/src/components/GithubCorner/
  inflating: adempiere-vue-3.9.3/src/components/GithubCorner/index.vue
   creating: adempiere-vue-3.9.3/src/components/Hamburger/
  inflating: adempiere-vue-3.9.3/src/components/Hamburger/index.vue
   creating: adempiere-vue-3.9.3/src/components/ImageCropper/
  inflating: adempiere-vue-3.9.3/src/components/ImageCropper/index.vue
   creating: adempiere-vue-3.9.3/src/components/ImageCropper/utils/
  inflating: adempiere-vue-3.9.3/src/components/ImageCropper/utils/data2blob.js
  inflating: adempiere-vue-3.9.3/src/components/ImageCropper/utils/effectRipple.js
  inflating: adempiere-vue-3.9.3/src/components/ImageCropper/utils/language.js
  inflating: adempiere-vue-3.9.3/src/components/ImageCropper/utils/mimes.js
   creating: adempiere-vue-3.9.3/src/components/JsonEditor/
  inflating: adempiere-vue-3.9.3/src/components/JsonEditor/index.vue
   creating: adempiere-vue-3.9.3/src/components/Kanban/
  inflating: adempiere-vue-3.9.3/src/components/Kanban/index.vue
   creating: adempiere-vue-3.9.3/src/components/LangSelect/
  inflating: adempiere-vue-3.9.3/src/components/LangSelect/index.vue
   creating: adempiere-vue-3.9.3/src/components/MDinput/
  inflating: adempiere-vue-3.9.3/src/components/MDinput/index.vue
   creating: adempiere-vue-3.9.3/src/components/MarkdownEditor/
  inflating: adempiere-vue-3.9.3/src/components/MarkdownEditor/index.vue
   creating: adempiere-vue-3.9.3/src/components/Pagination/
  inflating: adempiere-vue-3.9.3/src/components/Pagination/index.vue
   creating: adempiere-vue-3.9.3/src/components/PanThumb/
  inflating: adempiere-vue-3.9.3/src/components/PanThumb/index.vue
   creating: adempiere-vue-3.9.3/src/components/Screenfull/
  inflating: adempiere-vue-3.9.3/src/components/Screenfull/index.vue
   creating: adempiere-vue-3.9.3/src/components/ScrollPane/
  inflating: adempiere-vue-3.9.3/src/components/ScrollPane/index.vue
   creating: adempiere-vue-3.9.3/src/components/Share/
  inflating: adempiere-vue-3.9.3/src/components/Share/dropdownMenu.vue
   creating: adempiere-vue-3.9.3/src/components/SizeSelect/
  inflating: adempiere-vue-3.9.3/src/components/SizeSelect/index.vue
   creating: adempiere-vue-3.9.3/src/components/Sticky/
  inflating: adempiere-vue-3.9.3/src/components/Sticky/index.vue
   creating: adempiere-vue-3.9.3/src/components/SvgIcon/
  inflating: adempiere-vue-3.9.3/src/components/SvgIcon/index.vue
   creating: adempiere-vue-3.9.3/src/components/TextHoverEffect/
  inflating: adempiere-vue-3.9.3/src/components/TextHoverEffect/Mallki.vue
   creating: adempiere-vue-3.9.3/src/components/ThemePicker/
  inflating: adempiere-vue-3.9.3/src/components/ThemePicker/index.vue
   creating: adempiere-vue-3.9.3/src/components/Tinymce/
   creating: adempiere-vue-3.9.3/src/components/Tinymce/components/
  inflating: adempiere-vue-3.9.3/src/components/Tinymce/components/editorImage.vue
  inflating: adempiere-vue-3.9.3/src/components/Tinymce/index.vue
  inflating: adempiere-vue-3.9.3/src/components/Tinymce/plugins.js
  inflating: adempiere-vue-3.9.3/src/components/Tinymce/toolbar.js
   creating: adempiere-vue-3.9.3/src/components/TreeTable/
  inflating: adempiere-vue-3.9.3/src/components/TreeTable/eval.js
  inflating: adempiere-vue-3.9.3/src/components/TreeTable/index.vue
  inflating: adempiere-vue-3.9.3/src/components/TreeTable/readme.md
   creating: adempiere-vue-3.9.3/src/components/Upload/
  inflating: adempiere-vue-3.9.3/src/components/Upload/singleImage.vue
  inflating: adempiere-vue-3.9.3/src/components/Upload/singleImage2.vue
  inflating: adempiere-vue-3.9.3/src/components/Upload/singleImage3.vue
   creating: adempiere-vue-3.9.3/src/components/UploadExcel/
  inflating: adempiere-vue-3.9.3/src/components/UploadExcel/index.vue
   creating: adempiere-vue-3.9.3/src/directive/
   creating: adempiere-vue-3.9.3/src/directive/clipboard/
  inflating: adempiere-vue-3.9.3/src/directive/clipboard/clipboard.js
  inflating: adempiere-vue-3.9.3/src/directive/clipboard/index.js
   creating: adempiere-vue-3.9.3/src/directive/el-dragDialog/
  inflating: adempiere-vue-3.9.3/src/directive/el-dragDialog/drag.js
  inflating: adempiere-vue-3.9.3/src/directive/el-dragDialog/index.js
   creating: adempiere-vue-3.9.3/src/directive/permission/
  inflating: adempiere-vue-3.9.3/src/directive/permission/index.js
  inflating: adempiere-vue-3.9.3/src/directive/permission/permission.js
  inflating: adempiere-vue-3.9.3/src/directive/sticky.js
   creating: adempiere-vue-3.9.3/src/directive/waves/
  inflating: adempiere-vue-3.9.3/src/directive/waves/index.js
  inflating: adempiere-vue-3.9.3/src/directive/waves/waves.css
  inflating: adempiere-vue-3.9.3/src/directive/waves/waves.js
  inflating: adempiere-vue-3.9.3/src/errorLog.js
   creating: adempiere-vue-3.9.3/src/filters/
  inflating: adempiere-vue-3.9.3/src/filters/index.js
   creating: adempiere-vue-3.9.3/src/icons/
  inflating: adempiere-vue-3.9.3/src/icons/index.js
   creating: adempiere-vue-3.9.3/src/icons/svg/
  inflating: adempiere-vue-3.9.3/src/icons/svg/404.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/bug.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/chart.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/clipboard.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/component.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/dashboard.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/documentation.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/drag.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/edit.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/email.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/example.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/excel.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/eye.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/form.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/guide 2.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/guide.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/icon.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/international.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/language.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/link.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/list.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/lock.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/message.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/money.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/nested.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/password.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/people.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/peoples.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/qq.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/shopping.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/size.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/star.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/tab.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/table.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/theme.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/tree.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/user.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/wechat.svg
  inflating: adempiere-vue-3.9.3/src/icons/svg/zip.svg
  inflating: adempiere-vue-3.9.3/src/icons/svgo.yml
   creating: adempiere-vue-3.9.3/src/lang/
  inflating: adempiere-vue-3.9.3/src/lang/en.js
  inflating: adempiere-vue-3.9.3/src/lang/es.js
  inflating: adempiere-vue-3.9.3/src/lang/index.js
  inflating: adempiere-vue-3.9.3/src/lang/zh.js
  inflating: adempiere-vue-3.9.3/src/main.js
   creating: adempiere-vue-3.9.3/src/mock/
  inflating: adempiere-vue-3.9.3/src/mock/article.js
  inflating: adempiere-vue-3.9.3/src/mock/index.js
  inflating: adempiere-vue-3.9.3/src/mock/login.js
  inflating: adempiere-vue-3.9.3/src/mock/remoteSearch.js
  inflating: adempiere-vue-3.9.3/src/mock/transaction.js
  inflating: adempiere-vue-3.9.3/src/permission.js
   creating: adempiere-vue-3.9.3/src/router/
  inflating: adempiere-vue-3.9.3/src/router/index.js
   creating: adempiere-vue-3.9.3/src/router/modules/
  inflating: adempiere-vue-3.9.3/src/router/modules/charts.js
  inflating: adempiere-vue-3.9.3/src/router/modules/components.js
  inflating: adempiere-vue-3.9.3/src/router/modules/nested.js
  inflating: adempiere-vue-3.9.3/src/router/modules/table.js
   creating: adempiere-vue-3.9.3/src/store/
  inflating: adempiere-vue-3.9.3/src/store/getters.js
  inflating: adempiere-vue-3.9.3/src/store/index.js
   creating: adempiere-vue-3.9.3/src/store/modules/
  inflating: adempiere-vue-3.9.3/src/store/modules/app.js
  inflating: adempiere-vue-3.9.3/src/store/modules/errorLog.js
  inflating: adempiere-vue-3.9.3/src/store/modules/permission.js
  inflating: adempiere-vue-3.9.3/src/store/modules/tagsView.js
  inflating: adempiere-vue-3.9.3/src/store/modules/user.js
   creating: adempiere-vue-3.9.3/src/styles/
  inflating: adempiere-vue-3.9.3/src/styles/btn.scss
  inflating: adempiere-vue-3.9.3/src/styles/element-ui.scss
  inflating: adempiere-vue-3.9.3/src/styles/index.scss
  inflating: adempiere-vue-3.9.3/src/styles/mixin.scss
  inflating: adempiere-vue-3.9.3/src/styles/sidebar.scss
  inflating: adempiere-vue-3.9.3/src/styles/transition.scss
  inflating: adempiere-vue-3.9.3/src/styles/variables.scss
   creating: adempiere-vue-3.9.3/src/utils/
  inflating: adempiere-vue-3.9.3/src/utils/auth.js
  inflating: adempiere-vue-3.9.3/src/utils/clipboard.js
  inflating: adempiere-vue-3.9.3/src/utils/createUniqueString.js
  inflating: adempiere-vue-3.9.3/src/utils/i18n.js
  inflating: adempiere-vue-3.9.3/src/utils/index.js
  inflating: adempiere-vue-3.9.3/src/utils/openWindow.js
  inflating: adempiere-vue-3.9.3/src/utils/permission.js
  inflating: adempiere-vue-3.9.3/src/utils/request.js
  inflating: adempiere-vue-3.9.3/src/utils/scrollTo.js
  inflating: adempiere-vue-3.9.3/src/utils/validate.js
   creating: adempiere-vue-3.9.3/src/vendor/
  inflating: adempiere-vue-3.9.3/src/vendor/Export2Excel.js
  inflating: adempiere-vue-3.9.3/src/vendor/Export2Zip.js
   creating: adempiere-vue-3.9.3/src/views/
   creating: adempiere-vue-3.9.3/src/views/charts/
  inflating: adempiere-vue-3.9.3/src/views/charts/keyboard.vue
  inflating: adempiere-vue-3.9.3/src/views/charts/line.vue
  inflating: adempiere-vue-3.9.3/src/views/charts/mixChart.vue
   creating: adempiere-vue-3.9.3/src/views/clipboard/
  inflating: adempiere-vue-3.9.3/src/views/clipboard/index.vue
   creating: adempiere-vue-3.9.3/src/views/components-demo/
  inflating: adempiere-vue-3.9.3/src/views/components-demo/avatarUpload.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/backToTop.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/countTo.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/dndList.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/dragDialog.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/dragKanban.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/dragSelect.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/dropzone.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/jsonEditor.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/markdown.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/mixin.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/splitpane.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/sticky.vue
  inflating: adempiere-vue-3.9.3/src/views/components-demo/tinymce.vue
   creating: adempiere-vue-3.9.3/src/views/dashboard/
   creating: adempiere-vue-3.9.3/src/views/dashboard/admin/
   creating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/BarChart.vue
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/BoxCard.vue
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/LineChart.vue
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/PanelGroup.vue
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/PieChart.vue
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/RaddarChart.vue
   creating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/TodoList/
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/TodoList/Todo.vue
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/TodoList/index.scss
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/TodoList/index.vue
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/components/TransactionTable.vue
  inflating: adempiere-vue-3.9.3/src/views/dashboard/admin/index.vue
   creating: adempiere-vue-3.9.3/src/views/dashboard/editor/
  inflating: adempiere-vue-3.9.3/src/views/dashboard/editor/index.vue
  inflating: adempiere-vue-3.9.3/src/views/dashboard/index.vue
   creating: adempiere-vue-3.9.3/src/views/documentation/
  inflating: adempiere-vue-3.9.3/src/views/documentation/index.vue
   creating: adempiere-vue-3.9.3/src/views/errorLog/
  inflating: adempiere-vue-3.9.3/src/views/errorLog/errorTestA.vue
  inflating: adempiere-vue-3.9.3/src/views/errorLog/errorTestB.vue
  inflating: adempiere-vue-3.9.3/src/views/errorLog/index.vue
   creating: adempiere-vue-3.9.3/src/views/errorPage/
  inflating: adempiere-vue-3.9.3/src/views/errorPage/401.vue
  inflating: adempiere-vue-3.9.3/src/views/errorPage/404.vue
   creating: adempiere-vue-3.9.3/src/views/example/
   creating: adempiere-vue-3.9.3/src/views/example/components/
  inflating: adempiere-vue-3.9.3/src/views/example/components/ArticleDetail.vue
   creating: adempiere-vue-3.9.3/src/views/example/components/Dropdown/
  inflating: adempiere-vue-3.9.3/src/views/example/components/Dropdown/Comment.vue
  inflating: adempiere-vue-3.9.3/src/views/example/components/Dropdown/Platform.vue
  inflating: adempiere-vue-3.9.3/src/views/example/components/Dropdown/SourceUrl.vue
  inflating: adempiere-vue-3.9.3/src/views/example/components/Dropdown/index.js
  inflating: adempiere-vue-3.9.3/src/views/example/components/Warning.vue
  inflating: adempiere-vue-3.9.3/src/views/example/create.vue
  inflating: adempiere-vue-3.9.3/src/views/example/edit.vue
  inflating: adempiere-vue-3.9.3/src/views/example/list.vue
   creating: adempiere-vue-3.9.3/src/views/excel/
   creating: adempiere-vue-3.9.3/src/views/excel/components/
  inflating: adempiere-vue-3.9.3/src/views/excel/components/AutoWidthOption.vue
  inflating: adempiere-vue-3.9.3/src/views/excel/components/BookTypeOption.vue
  inflating: adempiere-vue-3.9.3/src/views/excel/components/FilenameOption.vue
  inflating: adempiere-vue-3.9.3/src/views/excel/exportExcel.vue
  inflating: adempiere-vue-3.9.3/src/views/excel/selectExcel.vue
  inflating: adempiere-vue-3.9.3/src/views/excel/uploadExcel.vue
   creating: adempiere-vue-3.9.3/src/views/guide/
  inflating: adempiere-vue-3.9.3/src/views/guide/defineSteps.js
  inflating: adempiere-vue-3.9.3/src/views/guide/index.vue
   creating: adempiere-vue-3.9.3/src/views/i18n-demo/
  inflating: adempiere-vue-3.9.3/src/views/i18n-demo/index.vue
  inflating: adempiere-vue-3.9.3/src/views/i18n-demo/local.js
   creating: adempiere-vue-3.9.3/src/views/layout/
  inflating: adempiere-vue-3.9.3/src/views/layout/Layout.vue
   creating: adempiere-vue-3.9.3/src/views/layout/components/
  inflating: adempiere-vue-3.9.3/src/views/layout/components/AppMain.vue
  inflating: adempiere-vue-3.9.3/src/views/layout/components/Navbar.vue
   creating: adempiere-vue-3.9.3/src/views/layout/components/Sidebar/
  inflating: adempiere-vue-3.9.3/src/views/layout/components/Sidebar/FixiOSBug.js
  inflating: adempiere-vue-3.9.3/src/views/layout/components/Sidebar/Item.vue
  inflating: adempiere-vue-3.9.3/src/views/layout/components/Sidebar/Link.vue
  inflating: adempiere-vue-3.9.3/src/views/layout/components/Sidebar/SidebarItem.vue
  inflating: adempiere-vue-3.9.3/src/views/layout/components/Sidebar/index.vue
  inflating: adempiere-vue-3.9.3/src/views/layout/components/TagsView.vue
  inflating: adempiere-vue-3.9.3/src/views/layout/components/index.js
   creating: adempiere-vue-3.9.3/src/views/layout/mixin/
  inflating: adempiere-vue-3.9.3/src/views/layout/mixin/ResizeHandler.js
   creating: adempiere-vue-3.9.3/src/views/login/
  inflating: adempiere-vue-3.9.3/src/views/login/authredirect.vue
  inflating: adempiere-vue-3.9.3/src/views/login/index.vue
  inflating: adempiere-vue-3.9.3/src/views/login/socialsignin.vue
   creating: adempiere-vue-3.9.3/src/views/nested/
   creating: adempiere-vue-3.9.3/src/views/nested/menu1/
  inflating: adempiere-vue-3.9.3/src/views/nested/menu1/index.vue
   creating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-1/
  inflating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-1/index.vue
   creating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-2/
  inflating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-2/index.vue
   creating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-2/menu1-2-1/
  inflating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-2/menu1-2-1/index.vue
   creating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-2/menu1-2-2/
  inflating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-2/menu1-2-2/index.vue
   creating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-3/
  inflating: adempiere-vue-3.9.3/src/views/nested/menu1/menu1-3/index.vue
   creating: adempiere-vue-3.9.3/src/views/nested/menu2/
  inflating: adempiere-vue-3.9.3/src/views/nested/menu2/index.vue
   creating: adempiere-vue-3.9.3/src/views/permission/
   creating: adempiere-vue-3.9.3/src/views/permission/components/
  inflating: adempiere-vue-3.9.3/src/views/permission/components/SwitchRoles.vue
  inflating: adempiere-vue-3.9.3/src/views/permission/directive.vue
  inflating: adempiere-vue-3.9.3/src/views/permission/page.vue
   creating: adempiere-vue-3.9.3/src/views/qiniu/
  inflating: adempiere-vue-3.9.3/src/views/qiniu/upload.vue
   creating: adempiere-vue-3.9.3/src/views/redirect/
  inflating: adempiere-vue-3.9.3/src/views/redirect/index.vue
   creating: adempiere-vue-3.9.3/src/views/svg-icons/
  inflating: adempiere-vue-3.9.3/src/views/svg-icons/index.vue
  inflating: adempiere-vue-3.9.3/src/views/svg-icons/requireIcons.js
   creating: adempiere-vue-3.9.3/src/views/tab/
   creating: adempiere-vue-3.9.3/src/views/tab/components/
  inflating: adempiere-vue-3.9.3/src/views/tab/components/tabPane.vue
  inflating: adempiere-vue-3.9.3/src/views/tab/index.vue
   creating: adempiere-vue-3.9.3/src/views/table/
  inflating: adempiere-vue-3.9.3/src/views/table/complexTable.vue
  inflating: adempiere-vue-3.9.3/src/views/table/dragTable.vue
   creating: adempiere-vue-3.9.3/src/views/table/dynamicTable/
  inflating: adempiere-vue-3.9.3/src/views/table/dynamicTable/fixedThead.vue
  inflating: adempiere-vue-3.9.3/src/views/table/dynamicTable/index.vue
  inflating: adempiere-vue-3.9.3/src/views/table/dynamicTable/unfixedThead.vue
  inflating: adempiere-vue-3.9.3/src/views/table/inlineEditTable.vue
   creating: adempiere-vue-3.9.3/src/views/table/treeTable/
  inflating: adempiere-vue-3.9.3/src/views/table/treeTable/customEval.js
  inflating: adempiere-vue-3.9.3/src/views/table/treeTable/customTreeTable.vue
  inflating: adempiere-vue-3.9.3/src/views/table/treeTable/treeTable.vue
   creating: adempiere-vue-3.9.3/src/views/theme/
  inflating: adempiere-vue-3.9.3/src/views/theme/index.vue
   creating: adempiere-vue-3.9.3/src/views/zip/
  inflating: adempiere-vue-3.9.3/src/views/zip/index.vue
   creating: adempiere-vue-3.9.3/static/
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/langs/
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/langs/zh_CN.js
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/codesample/
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/codesample/css/
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/codesample/css/prism.css
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-cool.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-cry.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-embarassed.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-foot-in-mouth.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-frown.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-innocent.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-kiss.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-laughing.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-money-mouth.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-sealed.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-smile.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-surprised.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-tongue-out.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-undecided.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-wink.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/emoticons/img/smiley-yell.gif
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/visualblocks/
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/visualblocks/css/
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/plugins/visualblocks/css/visualblocks.css
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/content.inline.min.css
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/content.min.css
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/tinymce-mobile.woff
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/tinymce-small.eot
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/tinymce-small.svg
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/tinymce-small.ttf
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/tinymce-small.woff
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/tinymce.eot
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/tinymce.svg
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/tinymce.ttf
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/fonts/tinymce.woff
   creating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/img/
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/img/anchor.gif
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/img/loader.gif
 extracting: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/img/object.gif
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/img/trans.gif
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/skin.min.css
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/skins/lightgray/skin.min.css.map
  inflating: adempiere-vue-3.9.3/static/tinymce4.7.5/tinymce.min.js
npm WARN deprecated request@2.88.2: request has been deprecated, see https://github.com/request/request/issues/3142
npm WARN deprecated bfj-node4@5.3.1: Switch to the `bfj` package for fixes and new features!
npm WARN deprecated chokidar@2.1.8: Chokidar 2 will break on node v14+. Upgrade to chokidar 3 with 15x less dependencies.
npm WARN deprecated nomnom@1.8.1: Package no longer supported. Contact support@npmjs.com for more info.
npm WARN deprecated core-js@2.3.0: core-js@<3 is no longer maintained and not recommended for usage due to the number of issues. Please, upgrade your dependencies to the actual version of core-js@3.
npm WARN deprecated core-js@2.6.11: core-js@<3 is no longer maintained and not recommended for usage due to the number of issues. Please, upgrade your dependencies to the actual version of core-js@3.
npm WARN deprecated fsevents@1.2.13: fsevents 1 will break on node v14+ and could be using insecure binaries. Upgrade to fsevents 2.
npm WARN deprecated circular-json@0.3.3: CircularJSON is in maintenance only, flatted is its successor.
npm WARN deprecated resolve-url@0.2.1: https://github.com/lydell/resolve-url#deprecated
npm WARN deprecated urix@0.1.0: Please see https://github.com/lydell/urix#deprecated

> husky@0.14.3 install /opt/Apps/adempiere-vue/node_modules/husky
> node ./bin/install.js

husky
setting up Git hooks
can't find .git directory, skipping Git hooks installation

> node-sass@4.14.1 install /opt/Apps/adempiere-vue/node_modules/node-sass
> node scripts/install.js

Downloading binary from https://github.com/sass/node-sass/releases/download/v4.14.1/linux_musl-x64-72_binding.node
Download complete
Binary saved to /opt/Apps/adempiere-vue/node_modules/node-sass/vendor/linux_musl-x64-72/binding.node
Caching binary to /root/.npm/node-sass/4.14.1/linux_musl-x64-72_binding.node

> core-js@2.6.11 postinstall /opt/Apps/adempiere-vue/node_modules/core-js
> node -e "try{require('./postinstall')}catch(e){}"

Thank you for using core-js ( https://github.com/zloirock/core-js ) for polyfilling JavaScript standard library!

The project needs your help! Please consider supporting of core-js on Open Collective or Patreon:
> https://opencollective.com/core-js
> https://www.patreon.com/zloirock

Also, the author of core-js ( https://github.com/zloirock ) is looking for a good job -)


> ejs@2.7.4 postinstall /opt/Apps/adempiere-vue/node_modules/ejs
> node ./postinstall.js

Thank you for installing EJS: built with the Jake JavaScript build tool (https://jakejs.com/)


> node-sass@4.14.1 postinstall /opt/Apps/adempiere-vue/node_modules/node-sass
> node scripts/build.js

Binary found at /opt/Apps/adempiere-vue/node_modules/node-sass/vendor/linux_musl-x64-72/binding.node
Testing binary
Binary is fine
npm notice created a lockfile as package-lock.json. You should commit this file.
npm WARN notsup Unsupported engine for watchpack-chokidar2@2.0.0: wanted: {"node":"<8.10.0"} (current: {"node":"12.18.2","npm":"6.14.5"})
npm WARN notsup Not compatible with your version of node/npm: watchpack-chokidar2@2.0.0
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@~2.1.2 (node_modules/chokidar/node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@2.1.3: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@^1.2.7 (node_modules/watchpack-chokidar2/node_modules/chokidar/node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.13: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@^1.2.7 (node_modules/webpack-dev-server/node_modules/chokidar/node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.13: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
npm WARN script-ext-html-webpack-plugin@2.0.1 requires a peer of html-webpack-plugin@^3.0.0 but none is installed. You must install peer dependencies yourself.

added 1573 packages from 1592 contributors and audited 1582 packages in 159.003s

29 packages are looking for funding
  run `npm fund` for details

found 16 vulnerabilities (6 low, 7 moderate, 3 high)
  run `npm audit fix` to fix them, or `npm audit` for details
Removing intermediate container ee6de9fb41a7
 ---> 5f20c7d448a6
Step 6/8 : WORKDIR /opt/Apps/adempiere-vue
 ---> Running in 84d00a4bdd05
Removing intermediate container 84d00a4bdd05
 ---> 4d36a9000463
Step 7/8 : EXPOSE 9526
 ---> Running in 4c4a0351a161
Removing intermediate container 4c4a0351a161
 ---> 94ab542055fe
Step 8/8 : CMD npm run build:prod --preview
 ---> Running in 7d80165b3ca4
Removing intermediate container 7d80165b3ca4
 ---> 7807d558069c

Successfully built 7807d558069c
Successfully tagged adempiere-vue-docker_web-client:latest
WARNING: Image for service web-client was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Creating adempiere-ui-client ... done
Attaching to adempiere-ui-client
adempiere-ui-client |
adempiere-ui-client | > vue-element-admin@3.9.3 build:prod /opt/Apps/adempiere-vue
adempiere-ui-client | > cross-env NODE_ENV=production env_config=prod node build/build.js
adempiere-ui-client |
Hash: 8d20b0e4268d0d276a6e
adempiere-ui-client | Version: webpack 4.16.5
adempiere-ui-client | Time: 173452ms
adempiere-ui-client | Built at: 07/13/2020 3:38:40 PM
adempiere-ui-client |                                                              Asset       Size           Chunks                    Chunk Names
adempiere-ui-client |                             static/fonts/element-icons.6f0a763.ttf   10.8 KiB                   [emitted]
adempiere-ui-client |                             static/fonts/element-icons.27c7209.ttf   10.8 KiB                   [emitted]
adempiere-ui-client |                       static/fonts/fontawesome-webfont.674f50d.eot    162 KiB                   [emitted]
adempiere-ui-client |                     static/fonts/fontawesome-webfont.af7ae50.woff2   75.4 KiB                   [emitted]
adempiere-ui-client |                         static/img/fontawesome-webfont.912ec66.svg    434 KiB                   [emitted]  [big]
adempiere-ui-client |                      static/fonts/fontawesome-webfont.fee66e7.woff   95.7 KiB                   [emitted]
adempiere-ui-client |                       static/fonts/fontawesome-webfont.b06871f.ttf    162 KiB                   [emitted]
adempiere-ui-client |                                         static/img/404.a57b6f3.png   95.8 KiB                   [emitted]
adempiere-ui-client |                                         static/img/401.089007e.gif    160 KiB                   [emitted]
adempiere-ui-client |                                         static/js/27OO.4ee76676.js  372 bytes             27OO  [emitted]
adempiere-ui-client |                                         static/js/6bwb.935655f4.js  393 bytes             6bwb  [emitted]
adempiere-ui-client |                                         static/js/7zzA.acd9b7e4.js  374 bytes             7zzA  [emitted]
adempiere-ui-client |                                         static/js/CO/P.c69dc522.js  374 bytes             CO/P  [emitted]
adempiere-ui-client |                                         static/js/JEtC.d582661d.js  388 bytes             JEtC  [emitted]
adempiere-ui-client |                                         static/js/M55E.990f0f16.js   96.7 KiB             M55E  [emitted]
adempiere-ui-client |                                         static/js/Oc3i.78de362a.js   2.95 KiB             Oc3i  [emitted]
adempiere-ui-client |                                         static/js/U/5H.2669e464.js   15.5 KiB             U/5H  [emitted]
adempiere-ui-client |                                         static/js/Vc2m.733314d5.js  408 bytes             Vc2m  [emitted]
adempiere-ui-client |                                         static/js/VrN/.112cd731.js    164 KiB             VrN/  [emitted]
adempiere-ui-client |                                         static/js/ZYJW.b9669658.js  358 bytes             ZYJW  [emitted]
adempiere-ui-client |                                        static/css/app.5bbef071.css   13.1 KiB              app  [emitted]         app
adempiere-ui-client |                                          static/js/app.e5a7b448.js    112 KiB              app  [emitted]         app
adempiere-ui-client |                                 static/css/chunk-0614.0bea8a22.css     40 KiB       chunk-0614  [emitted]
adempiere-ui-client |                                   static/js/chunk-0614.b3dc52bf.js    106 KiB       chunk-0614  [emitted]
adempiere-ui-client |                                 static/css/chunk-0d9e.cfb0938d.css  247 bytes       chunk-0d9e  [emitted]
adempiere-ui-client |                                   static/js/chunk-0d9e.544fc8f5.js   3.63 KiB       chunk-0d9e  [emitted]
adempiere-ui-client |                                 static/css/chunk-0e87.449e2357.css   3.09 KiB       chunk-0e87  [emitted]
adempiere-ui-client |                                   static/js/chunk-0e87.fc1a205c.js   25.5 KiB       chunk-0e87  [emitted]
adempiere-ui-client |                                   static/js/chunk-12c6.f2e17e68.js  464 bytes       chunk-12c6  [emitted]
adempiere-ui-client |                                 static/css/chunk-15df.aa88ccdb.css  506 bytes       chunk-15df  [emitted]
adempiere-ui-client |                                   static/js/chunk-15df.5ada1362.js   4.29 KiB       chunk-15df  [emitted]
adempiere-ui-client |                                 static/css/chunk-1664.ec80dea0.css  248 bytes       chunk-1664  [emitted]
adempiere-ui-client |                                   static/js/chunk-1664.78ac88fa.js   5.72 KiB       chunk-1664  [emitted]
adempiere-ui-client |                                 static/css/chunk-18e2.b9108161.css   12.3 KiB       chunk-18e2  [emitted]
adempiere-ui-client |                                   static/js/chunk-18e2.d944075e.js   29.8 KiB       chunk-18e2  [emitted]
adempiere-ui-client |                                 static/css/chunk-1a4e.4950f386.css   3.88 KiB       chunk-1a4e  [emitted]
adempiere-ui-client |                                   static/js/chunk-1a4e.59239b0e.js   2.75 KiB       chunk-1a4e  [emitted]
adempiere-ui-client |                                 static/css/chunk-1bbc.d8ccbe58.css   89 bytes       chunk-1bbc  [emitted]
adempiere-ui-client |                                   static/js/chunk-1bbc.b8bd91e4.js   3.29 KiB       chunk-1bbc  [emitted]
adempiere-ui-client |                                   static/js/chunk-205d.2fad21d7.js   1.33 KiB       chunk-205d  [emitted]
adempiere-ui-client |                                 static/css/chunk-2258.43dde3cb.css    225 KiB       chunk-2258  [emitted]
adempiere-ui-client |                                   static/js/chunk-2258.bac7c24a.js   2.82 KiB       chunk-2258  [emitted]
adempiere-ui-client |                                 static/css/chunk-2401.aa88ccdb.css  506 bytes       chunk-2401  [emitted]
adempiere-ui-client |                                   static/js/chunk-2401.7ea323c4.js   5.72 KiB       chunk-2401  [emitted]
adempiere-ui-client |                                 static/css/chunk-242a.d138aed1.css   44 bytes       chunk-242a  [emitted]
adempiere-ui-client |                                   static/js/chunk-242a.c84eef8c.js   4.15 KiB       chunk-242a  [emitted]
adempiere-ui-client |                                 static/css/chunk-2867.407b1248.css  160 bytes       chunk-2867  [emitted]
adempiere-ui-client |                                   static/js/chunk-2867.277aeebc.js      2 KiB       chunk-2867  [emitted]
adempiere-ui-client |                                 static/css/chunk-2c7f.ef0ea705.css   16.1 KiB       chunk-2c7f  [emitted]
adempiere-ui-client |                                   static/js/chunk-2c7f.a365d85f.js   20.9 KiB       chunk-2c7f  [emitted]
adempiere-ui-client |                                   static/js/chunk-2f02.a9d20f3f.js    756 KiB       chunk-2f02  [emitted]  [big]
adempiere-ui-client |                                 static/css/chunk-39b5.fdb8707e.css   6.09 KiB       chunk-39b5  [emitted]
adempiere-ui-client |                                   static/js/chunk-39b5.ef35eefb.js   7.09 KiB       chunk-39b5  [emitted]
adempiere-ui-client |                                   static/js/chunk-3c5e.ea2ad9f5.js    854 KiB       chunk-3c5e  [emitted]  [big]
adempiere-ui-client |                                 static/css/chunk-4187.53fdd079.css  435 bytes       chunk-4187  [emitted]
adempiere-ui-client |                                   static/js/chunk-4187.1c89e068.js   11.5 KiB       chunk-4187  [emitted]
adempiere-ui-client |                                 static/css/chunk-41df.82361c5d.css  168 bytes       chunk-41df  [emitted]
adempiere-ui-client |                                   static/js/chunk-41df.b21bd5b1.js   4.94 KiB       chunk-41df  [emitted]
adempiere-ui-client |                                 static/css/chunk-4283.8944d6e3.css   1.43 KiB       chunk-4283  [emitted]
adempiere-ui-client |                                   static/js/chunk-4283.9b449f59.js    1.9 KiB       chunk-4283  [emitted]
adempiere-ui-client |                                   static/js/chunk-45e9.5d8e2129.js   3.81 KiB       chunk-45e9  [emitted]
adempiere-ui-client |                                   static/js/chunk-49fa.749d7260.js   3.18 KiB       chunk-49fa  [emitted]
adempiere-ui-client |                                 static/css/chunk-5176.b53fd969.css  109 bytes       chunk-5176  [emitted]
adempiere-ui-client |                                   static/js/chunk-5176.3160d7e8.js   4.35 KiB       chunk-5176  [emitted]
adempiere-ui-client |                                 static/css/chunk-5314.2b1f4f2f.css   89 bytes       chunk-5314  [emitted]
adempiere-ui-client |                                   static/js/chunk-5314.2a1ed11f.js   2.25 KiB       chunk-5314  [emitted]
adempiere-ui-client |                                 static/css/chunk-55c2.a46d7dd6.css  232 bytes       chunk-55c2  [emitted]
adempiere-ui-client |                                   static/js/chunk-55c2.69f9d1bc.js   4.05 KiB       chunk-55c2  [emitted]
adempiere-ui-client |                                 static/css/chunk-5899.b5e2715d.css   89 bytes       chunk-5899  [emitted]
adempiere-ui-client |                                   static/js/chunk-5899.02ee95bb.js   3.09 KiB       chunk-5899  [emitted]
adempiere-ui-client |                                 static/css/chunk-5d8a.c5a4f3eb.css   81 bytes       chunk-5d8a  [emitted]
adempiere-ui-client |                                   static/js/chunk-5d8a.68e41c67.js   5.83 KiB       chunk-5d8a  [emitted]
adempiere-ui-client |                                 static/css/chunk-629f.430e350e.css  759 bytes       chunk-629f  [emitted]
adempiere-ui-client |                                   static/js/chunk-629f.47ec6f00.js   2.88 KiB       chunk-629f  [emitted]
adempiere-ui-client |                                 static/css/chunk-640f.a330a0f4.css  239 bytes       chunk-640f  [emitted]
adempiere-ui-client |                                   static/js/chunk-640f.a06d76a0.js   3.89 KiB       chunk-640f  [emitted]
adempiere-ui-client |                                 static/css/chunk-648e.8b54fa79.css   2.37 KiB       chunk-648e  [emitted]
adempiere-ui-client |                                   static/js/chunk-648e.dda14fb1.js   13.4 KiB       chunk-648e  [emitted]
adempiere-ui-client |                                 static/css/chunk-6593.2c1aa6dd.css  484 bytes       chunk-6593  [emitted]
adempiere-ui-client |                                   static/js/chunk-6593.cbc89169.js   7.43 KiB       chunk-6593  [emitted]
adempiere-ui-client |                                 static/css/chunk-659d.1a62b581.css   5.95 KiB       chunk-659d  [emitted]
adempiere-ui-client |                                   static/js/chunk-659d.60cb7fb6.js     41 KiB       chunk-659d  [emitted]
adempiere-ui-client |                                 static/css/chunk-6612.8bc10d62.css  336 bytes       chunk-6612  [emitted]
adempiere-ui-client |                                   static/js/chunk-6612.5b9a2067.js   2.67 KiB       chunk-6612  [emitted]
adempiere-ui-client |                                   static/js/chunk-7467.995da6ed.js    132 KiB       chunk-7467  [emitted]
adempiere-ui-client |                                 static/css/chunk-76a2.4aab689f.css   49 bytes       chunk-76a2  [emitted]
adempiere-ui-client |                                   static/js/chunk-76a2.918a5ce4.js   1.44 KiB       chunk-76a2  [emitted]
adempiere-ui-client |                                   static/js/chunk-7a57.197477ff.js   21.8 KiB       chunk-7a57  [emitted]
adempiere-ui-client |                                 static/css/chunk-8c2a.bb5ac992.css  375 bytes       chunk-8c2a  [emitted]
adempiere-ui-client |                                   static/js/chunk-8c2a.22086ec5.js   10.5 KiB       chunk-8c2a  [emitted]
adempiere-ui-client |                                 static/css/chunk-96bd.c84bc5f9.css   49 bytes       chunk-96bd  [emitted]
adempiere-ui-client |                                   static/js/chunk-96bd.9aacf842.js   1.61 KiB       chunk-96bd  [emitted]
adempiere-ui-client |                                 static/css/chunk-a6a2.c0e28533.css   1.76 KiB       chunk-a6a2  [emitted]
adempiere-ui-client |                                   static/js/chunk-a6a2.c0f9dfd9.js   5.25 KiB       chunk-a6a2  [emitted]
adempiere-ui-client |                                 static/css/chunk-afdb.c2bf1f56.css  745 bytes       chunk-afdb  [emitted]
adempiere-ui-client |                                   static/js/chunk-afdb.c82f18af.js   1.99 KiB       chunk-afdb  [emitted]
adempiere-ui-client |                                 static/css/chunk-b58b.4e6bae97.css   4.64 KiB       chunk-b58b  [emitted]
adempiere-ui-client |                                   static/js/chunk-b58b.ea7edd2d.js   8.02 KiB       chunk-b58b  [emitted]
adempiere-ui-client |                                 static/css/chunk-b9bd.52acc6f2.css  116 bytes       chunk-b9bd  [emitted]
adempiere-ui-client |                                   static/js/chunk-b9bd.3274da2f.js   3.94 KiB       chunk-b9bd  [emitted]
adempiere-ui-client |                                   static/js/chunk-bfbb.6a375b12.js    9.5 KiB       chunk-bfbb  [emitted]
adempiere-ui-client |                              static/css/chunk-commons.7fd4a68d.css    5.8 KiB    chunk-commons  [emitted]         chunk-commons
adempiere-ui-client |                                static/js/chunk-commons.e4791124.js   13.4 KiB    chunk-commons  [emitted]         chunk-commons
adempiere-ui-client |                                   static/js/chunk-d670.92088bb0.js   68.9 KiB       chunk-d670  [emitted]
adempiere-ui-client |                                 static/css/chunk-d997.5810c9e7.css  763 bytes       chunk-d997  [emitted]
adempiere-ui-client |                                   static/js/chunk-d997.36efe4da.js   16.6 KiB       chunk-d997  [emitted]
adempiere-ui-client |                                 static/css/chunk-daac.fd931f93.css   1.01 KiB       chunk-daac  [emitted]
adempiere-ui-client |                                   static/js/chunk-daac.7e6ed5ec.js   3.89 KiB       chunk-daac  [emitted]
adempiere-ui-client |                                 static/css/chunk-e1d5.288eb5dc.css   1.51 KiB       chunk-e1d5  [emitted]
adempiere-ui-client |                                   static/js/chunk-e1d5.e11735d5.js   9.96 KiB       chunk-e1d5  [emitted]
adempiere-ui-client |                                 static/css/chunk-e604.3071f1c2.css   2.47 KiB       chunk-e604  [emitted]
adempiere-ui-client |                                   static/js/chunk-e604.247f12ef.js   5.26 KiB       chunk-e604  [emitted]
adempiere-ui-client |                                   static/js/chunk-e85c.f31ec245.js   12.7 KiB       chunk-e85c  [emitted]
adempiere-ui-client |                            static/css/chunk-elementUI.ce0831ef.css    202 KiB  chunk-elementUI  [emitted]         chunk-elementUI
adempiere-ui-client |                              static/js/chunk-elementUI.4eaf1622.js    569 KiB  chunk-elementUI  [emitted]  [big]  chunk-elementUI
adempiere-ui-client |                                 static/css/chunk-f765.09fb8551.css   9.72 KiB       chunk-f765  [emitted]
adempiere-ui-client |                                   static/js/chunk-f765.04cf2130.js   37.3 KiB       chunk-f765  [emitted]
adempiere-ui-client |                                 static/css/chunk-libs.7a94c701.css   3.49 KiB       chunk-libs  [emitted]         chunk-libs
adempiere-ui-client |                                   static/js/chunk-libs.ac3535f7.js    342 KiB       chunk-libs  [emitted]  [big]  chunk-libs
adempiere-ui-client |                                         static/js/jYsI.ae151788.js  356 bytes             jYsI  [emitted]
adempiere-ui-client |                                         static/js/kbPl.7eb515d5.js  408 bytes             kbPl  [emitted]
adempiere-ui-client |                                         static/js/nOMX.b3b4c973.js  376 bytes             nOMX  [emitted]
adempiere-ui-client |                                         static/js/t5hZ.53786c71.js   3.09 KiB             t5hZ  [emitted]
adempiere-ui-client |                                         static/js/tvtM.3b4dc552.js  358 bytes             tvtM  [emitted]
adempiere-ui-client |                                                        favicon.ico   66.1 KiB                   [emitted]
adempiere-ui-client |                                                         index.html   7.33 KiB                   [emitted]
adempiere-ui-client |                                 static/tinymce4.7.5/langs/zh_CN.js    9.7 KiB                   [emitted]
adempiere-ui-client |               static/tinymce4.7.5/plugins/codesample/css/prism.css   2.28 KiB                   [emitted]
adempiere-ui-client |          static/tinymce4.7.5/plugins/emoticons/img/smiley-cool.gif  354 bytes                   [emitted]
adempiere-ui-client |           static/tinymce4.7.5/plugins/emoticons/img/smiley-cry.gif  329 bytes                   [emitted]
adempiere-ui-client |    static/tinymce4.7.5/plugins/emoticons/img/smiley-embarassed.gif  331 bytes                   [emitted]
adempiere-ui-client | static/tinymce4.7.5/plugins/emoticons/img/smiley-foot-in-mouth.gif  342 bytes                   [emitted]
adempiere-ui-client |         static/tinymce4.7.5/plugins/emoticons/img/smiley-frown.gif  340 bytes                   [emitted]
adempiere-ui-client |      static/tinymce4.7.5/plugins/emoticons/img/smiley-innocent.gif  336 bytes                   [emitted]
adempiere-ui-client |      static/tinymce4.7.5/plugins/emoticons/img/smiley-laughing.gif  343 bytes                   [emitted]
adempiere-ui-client |          static/tinymce4.7.5/plugins/emoticons/img/smiley-kiss.gif  338 bytes                   [emitted]
adempiere-ui-client |   static/tinymce4.7.5/plugins/emoticons/img/smiley-money-mouth.gif  321 bytes                   [emitted]
adempiere-ui-client |         static/tinymce4.7.5/plugins/emoticons/img/smiley-smile.gif  344 bytes                   [emitted]
adempiere-ui-client |     static/tinymce4.7.5/plugins/emoticons/img/smiley-surprised.gif  338 bytes                   [emitted]
adempiere-ui-client |    static/tinymce4.7.5/plugins/emoticons/img/smiley-tongue-out.gif  328 bytes                   [emitted]
adempiere-ui-client |     static/tinymce4.7.5/plugins/emoticons/img/smiley-undecided.gif  337 bytes                   [emitted]
adempiere-ui-client |          static/tinymce4.7.5/plugins/emoticons/img/smiley-wink.gif  350 bytes                   [emitted]
adempiere-ui-client |          static/tinymce4.7.5/plugins/emoticons/img/smiley-yell.gif  336 bytes                   [emitted]
adempiere-ui-client |        static/tinymce4.7.5/plugins/emoticons/img/smiley-sealed.gif  323 bytes                   [emitted]
adempiere-ui-client |      static/tinymce4.7.5/plugins/visualblocks/css/visualblocks.css   5.34 KiB                   [emitted]
adempiere-ui-client |         static/tinymce4.7.5/skins/lightgray/content.inline.min.css   3.25 KiB                   [emitted]
adempiere-ui-client |                static/tinymce4.7.5/skins/lightgray/content.min.css   3.67 KiB                   [emitted]
adempiere-ui-client |      static/tinymce4.7.5/skins/lightgray/fonts/tinymce-mobile.woff   4.52 KiB                   [emitted]
adempiere-ui-client |        static/tinymce4.7.5/skins/lightgray/fonts/tinymce-small.svg   24.1 KiB                   [emitted]
adempiere-ui-client |       static/tinymce4.7.5/skins/lightgray/fonts/tinymce-small.woff   9.16 KiB                   [emitted]
adempiere-ui-client |              static/tinymce4.7.5/skins/lightgray/fonts/tinymce.eot   18.4 KiB                   [emitted]
adempiere-ui-client |        static/tinymce4.7.5/skins/lightgray/fonts/tinymce-small.ttf   9.09 KiB                   [emitted]
adempiere-ui-client |        static/tinymce4.7.5/skins/lightgray/fonts/tinymce-small.eot   9.27 KiB                   [emitted]
adempiere-ui-client |              static/tinymce4.7.5/skins/lightgray/fonts/tinymce.svg   44.9 KiB                   [emitted]
adempiere-ui-client |              static/tinymce4.7.5/skins/lightgray/fonts/tinymce.ttf   18.2 KiB                   [emitted]
adempiere-ui-client |             static/tinymce4.7.5/skins/lightgray/fonts/tinymce.woff   18.3 KiB                   [emitted]
adempiere-ui-client |                 static/tinymce4.7.5/skins/lightgray/img/loader.gif   2.55 KiB                   [emitted]
adempiere-ui-client |                 static/tinymce4.7.5/skins/lightgray/img/object.gif  152 bytes                   [emitted]
adempiere-ui-client |                  static/tinymce4.7.5/skins/lightgray/img/trans.gif   43 bytes                   [emitted]
adempiere-ui-client |                 static/tinymce4.7.5/skins/lightgray/img/anchor.gif   53 bytes                   [emitted]
adempiere-ui-client |                   static/tinymce4.7.5/skins/lightgray/skin.min.css   42.3 KiB                   [emitted]
adempiere-ui-client |               static/tinymce4.7.5/skins/lightgray/skin.min.css.map   33.8 KiB                   [emitted]
adempiere-ui-client |                                 static/tinymce4.7.5/tinymce.min.js    815 KiB                   [emitted]  [big]
adempiere-ui-client | Entrypoint app [big] = static/js/runtime.864d8f2f.js static/css/chunk-elementUI.ce0831ef.css static/js/chunk-elementUI.4eaf1622.js static/css/chunk-libs.7a94c701.css static/js/chunk-libs.ac3535f7.js static/css/app.5bbef071.css static/js/app.e5a7b448.js
adempiere-ui-client |
adempiere-ui-client | WARNING in asset size limit: The following asset(s) exceed the recommended size limit (244 KiB).
adempiere-ui-client | This can impact web performance.
adempiere-ui-client | Assets:
adempiere-ui-client |   static/img/fontawesome-webfont.912ec66.svg (434 KiB)
adempiere-ui-client |   static/js/chunk-2f02.a9d20f3f.js (756 KiB)
adempiere-ui-client |   static/js/chunk-3c5e.ea2ad9f5.js (854 KiB)
adempiere-ui-client |   static/js/chunk-elementUI.4eaf1622.js (569 KiB)
adempiere-ui-client |   static/js/chunk-libs.ac3535f7.js (342 KiB)
adempiere-ui-client |   static/tinymce4.7.5/tinymce.min.js (815 KiB)
adempiere-ui-client |
adempiere-ui-client | WARNING in entrypoint size limit: The following entrypoint(s) combined asset size exceeds the recommended limit (244 KiB). This can impact web performance.
adempiere-ui-client | Entrypoints:
adempiere-ui-client |   app (1.21 MiB)
adempiere-ui-client |       static/js/runtime.864d8f2f.js
adempiere-ui-client |       static/css/chunk-elementUI.ce0831ef.css
adempiere-ui-client |       static/js/chunk-elementUI.4eaf1622.js
adempiere-ui-client |       static/css/chunk-libs.7a94c701.css
adempiere-ui-client |       static/js/chunk-libs.ac3535f7.js
adempiere-ui-client |       static/css/app.5bbef071.css
adempiere-ui-client |       static/js/app.e5a7b448.js
adempiere-ui-client |
adempiere-ui-client |
adempiere-ui-client |  Build complete.
adempiere-ui-client |
adempiere-ui-client |  Tip: built files are meant to be served over an HTTP server.
adempiere-ui-client |  Opening index.html over file:// won't work.
adempiere-ui-client |
adempiere-ui-client | > Listening at  http://localhost:9526/

```
