#!/bin/bash 
# create a Custom Monitor for Monitis
# Be sure to modify the API Key and Secret Key, and uncomment those lines
# or export the appropriate values in your shell before calling this script
ACTION="addMonitor" 
#APIKEY="" 
NAME="load monitor" 
RESULTPARAMS="1m:1 Min. Average:processes:4;5m:5 Min. Average:processes:4;15m:15 Min. Average:processes:4" 
TAG="loadMonitor" 
TIMESTAMP=`date -u +"%F %T"` 
VERSION="2" 
#SECRETKEY="" 
URL="http://monitis.com/customMonitorApi" 

# Create Checksum
CHECKSUM_STR="action"$ACTION"apikey"$APIKEY"name"$NAME"resultParams"$RESULTPARAMS"tag"$TAG"timestamp"$TIMESTAMP"version"$VERSION 
 CHECKSUM=$(echo -en $CHECKSUM_STR | openssl dgst -sha1 -hmac $SECRETKEY -binary | openssl enc -base64 ) 
  
# Post Data to API
POSTDATA="--data-urlencode \"action="$ACTION"\" --data-urlencode \"apikey="$APIKEY"\" --data-urlencode \"name="$NAME"\" --data-urlencode \"resultParams="$RESULTPARAMS"\" --data-urlencode \"tag="$TAG"\" --data-urlencode \"timestamp=$TIMESTAMP\" --data-urlencode \"version="$VERSION"\" --data-urlencode \"checksum="$CHECKSUM"\""

eval "curl ${POSTDATA} $URL"
echo ""
