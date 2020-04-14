#!/bin/sh
# clean up any older data
rm -rf swot.zip
rm -rf swot-build

# fetch the latest version of swot data
wget https://codeload.github.com/JetBrains/swot/zip/master -O swot.zip
mkdir swot-build
unzip swot.zip -d swot-build

# generate updated swot mapping
npm install --dev
node build.js
browserify -s swot index.js | uglifyjs -c -m > swot-simple.js
