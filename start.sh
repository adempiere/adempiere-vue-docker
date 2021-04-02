#!/bin/sh

cd /usr/share/nginx/html/static/js

# Ser API Proxy connection
find -name 'app.*.js' -exec sed -i "s|https://api.erpya.com|$API_URL|g" {} \;

# Start nginx web server
nginx && tail -f /dev/null
