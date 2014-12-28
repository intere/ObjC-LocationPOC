#!/bin/bash

#
# Generator Script currently uses the feature/UnitTests branch (rev: 55aa05c) of the following repository:
# https://github.com/intere/generator-json-models.git
#

CUR_DIR=$(dirname $0)
cd ${CUR_DIR}

GEN_SH=~/code/objective-c/run.sh

${GEN_SH} --className Track \
  --input-file $(pwd)/sample-track.json \
  --language objc \
  --output-location $(pwd)/tmp

${GEN_SH} --className TrackListMetadata \
  --input-file $(pwd)/track-list.json \
  --language objc \
  --output-location $(pwd)/tmp


mv $(pwd)/tmp/src/* ../LocationPOC
mv $(pwd)/tmp/test/* ../LocationPOCTests
