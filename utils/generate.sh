#!/bin/bash

#
# Generator Script currently uses the feature/UnitTests branch (rev: 55aa05c) of the following repository:
# https://github.com/intere/generator-json-models.git
#

CUR_DIR=$(dirname $0)
cd ${CUR_DIR}

GEN_SH=~/code/personal/code-generator/run.sh

# json_files=(contest-registration.json contests.json enumerations.json properties.json sample-track.json track-list-metadata.json track-overview.json users.json vouchers.json)
# class_names=(ContestRegistration Contest Enumeration Property Track TrackMetadataList TrackOverview User Voucher)
json_files=(sample-track.json track-list-metadata.json)
class_names=(Track TrackMetadataList)


# for (( i=0 ; i<9 ; i++ ))
for (( i=0 ; i<2 ; i++ ))
do
  ${GEN_SH} --className ${class_names[$i]} \
    --input-file $(pwd)/${json_files[$i]} \
    --language objc \
    --output-location $(pwd)/tmp
done

# mv tmp/src/* ../LocationPOC/
# mv tmp/test/* ../LocationPOCTests/
