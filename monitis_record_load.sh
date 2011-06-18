#!/bin/bash 
# Get system load averages from uptime(1) and send the result to monitis.

# The default tag for the monitor is loadMonitor, to match "monitis_create_load_monitor.sh"
 
usage() 
{ 
cat << EOF
usage: $0 options 
 
This script will send an update for system load to a monitor
 
OPTIONS: 
   -h      Show this message 
   -a      api key 
   -s      secret key
   -m      monitor tag (defaults to loadMonitor) 
   -i      monitor id (optional)
   -t      timestamp (defaults to utc now) 
EOF
} 
 
APIKEY=""
VERSION="2" 
SECRETKEY=""
URL="https://www.monitis.com/customMonitorApi" 
OUTPUT="xml" 
MONITOR="loadMonitor"
ID=""
CHECKTIME=`date -u +"%s"000`
#echo $CHECKTIME
TIMESTAMP=`date -u +"%F %T"` 
#echo $TIMESTAMP
RESULTS=""
SESSIONACTION=""

while getopts "ha:s:m:i:t:r:s:" OPTION 
do 
  case $OPTION in 
   h) 
     usage 
     exit 1 
   ;; 
   a) 
     APIKEY=$OPTARG 
   ;; 
   s) 
     SECRETKEY=$OPTARG 
   ;; 
   m) 
     MONITOR=$OPTARG 
   ;; 
   i) 
     ID=$OPTARG 
   ;; 
   t) 
     CHECKTIME=$OPTARG 
   ;; 
  esac 
done 
 
if [[ -z $APIKEY ]] || [[ -z $SECRETKEY ]] || [[ -z $MONITOR$ID ]] || [[ -z $CHECKTIME ]] 
then 
     usage 
     exit 1 
fi 

# Get id of monitor if not provided
if [[ -z $ID ]] 
then  
  XMLID=$(curl -s "$URL?apikey=$APIKEY&output=$OUTPUT&version=$VERSION&action=getMonitors&tag=$MONITOR" | xpath /monitors/monitor/id 2>/dev/null) 
  ID=${XMLID//[^0-9]/} 
fi 

# Get load averages
LOAD_AVGS_RESULT=`uptime | egrep -o "averages: (.*)" | while read a b c d; do echo 1m:$b\;5m:$c\;15m:$d; done`

# Add monitor result 
ACTION="addResult"
# Create Checksum 
CHECKSUM_STR="action"$ACTION"apikey"$APIKEY"checktime"$CHECKTIME"monitorId"$ID"results"$LOAD_AVGS_RESULT"timestamp"$TIMESTAMP"version"$VERSION 
#echo $CHECKSUM_STR
CHECKSUM=$(echo -en $CHECKSUM_STR | openssl dgst -sha1 -hmac $SECRETKEY -binary | openssl enc -base64 )
#echo $CHECKSUM
# Post Data to API 

POSTDATA="--data-urlencode \"action="$ACTION"\" --data-urlencode \"apikey="$APIKEY"\" --data-urlencode \"checktime="$CHECKTIME"\" --data-urlencode \"monitorId="$ID"\" --data-urlencode \"results="$LOAD_AVGS_RESULT"\" --data-urlencode \"timestamp=$TIMESTAMP\" --data-urlencode \"version="$VERSION"\" --data-urlencode \"checksum="$CHECKSUM"\""

eval "curl ${POSTDATA} $URL"
echo ""
