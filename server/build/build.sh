#!/bin/bash

cd "$( dirname "$0" )"

RJS=../node_modules/requirejs/bin/r.js

TMP=../public/build-out
FIN=../public/build-v3

mkdir -p $TMP
mkdir -p $FIN

# node $RJS -o drive.build.js && cp $TMP/drive-main.js $FIN/

node $RJS -o main.build.js && \
  uglifyjs $TMP/main.js -o $FIN/main.js -c -m -r require
rm -r $TMP
