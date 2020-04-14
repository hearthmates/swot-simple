#!/bin/sh
# clean up any left over files from a previous build
rm -rf swot.zip
rm -rf swot-build

echo "Fetching the latest version of swot data..."
wget https://codeload.github.com/JetBrains/swot/zip/master -O swot.zip
mkdir swot-build
unzip swot.zip -d swot-build

echo "Generating updated SWOT mapping..."
npm install --only=dev
npm audit fix
node build.js
browserify -s swot index.js | uglifyjs -c -m > swot-simple.js

echo "Cleaning up unused data source files.."
rm -rf swot.zip
rm -rf swot-build
