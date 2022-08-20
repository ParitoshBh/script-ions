#! /bin/bash

apt update
apt install -y groovy rpm ruby ruby-dev rubygems build-essential
gem install public_suffix -v 4.0.7
gem install --no-document fpm

cd /
mkdir insomnia && cd insomnia
git clone https://github.com/Kong/insomnia.git .
# LATEST_BUILD=$(git tag | grep "core@" | grep -v "beta" | tail -n 1)

npm run bootstrap
cd packages/insomnia/
npm run build:app
USE_SYSTEM_FPM="true" BUILD_TARGETS=deb node_modules/.bin/electron-builder build --config electron-builder.config.js --arm64
cp -r dist/*.deb /dist/