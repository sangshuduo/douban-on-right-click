#!/bin/bash

# Build Chrome ZIP
echo "Building Chrome extension..."
mkdir -p build/chrome
cp -r background.js icons chrome/manifest.json build/chrome/
cd build/chrome
zip -r ../../douban-on-right-click-chrome.zip *
cd ../../

# Build Firefox XPI
echo "Building Firefox extension..."
mkdir -p build/firefox
cp -r background.js icons firefox/manifest.json build/firefox/
cd build/firefox
zip -r ../../douban-on-right-click-firefox.xpi *
cd ../../

echo "Build completed."