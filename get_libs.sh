#!/bin/bash

BUNDLE_URL="https://github.com/adafruit/Adafruit_CircuitPython_Bundle/releases/download/20221222/adafruit-circuitpython-bundle-7.x-mpy-20221222.zip"
LIB_PATH="lib/"

rm -rf $LIB_PATH/*
wget -O bundle.zip $BUNDLE_URL
unzip bundle.zip "adafruit-circuitpython-bundle-7.x-mpy-*/lib/*" -d $LIB_PATH
mv  $LIB_PATH/adafruit-circuitpython-bundle-7.x-mpy-*/lib/adafruit_{magtag,io,bitmap_font,minimqtt} $LIB_PATH
mv  $LIB_PATH/adafruit-circuitpython-bundle-7.x-mpy-*/lib/simpleio.mpy $LIB_PATH
rm -rf $LIB_PATH/adafruit-circuitpython-bundle-7.x-mpy-* bundle.zip
