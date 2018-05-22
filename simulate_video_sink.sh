#!/bin/bash
# Two  parameters : -i <nameOfTheInputStream> and -o <outputFileName>
SCRIPTPATH=$( cd $(dirname $0) ; pwd -P );
output="/tmp/test.mpeg";
while getopts "o:i:" OPTNAME
do
   case $OPTNAME in
      i) input=$OPTARG;;
      o) output=$OPTARG;;
   esac
done
if [[ -z $input || -z $output ]]; then
   echo "Couldn't open or write file - aborting."
   exit 255
fi
#sout="$output";
#su vlcuser -c "cvlc -q -vvv $input --sout='$sout'"
su vlcuser -c "ffmpeg -i $input -strict -2 -y -loglevel 1 $output"
