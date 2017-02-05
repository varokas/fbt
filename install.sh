#!/bin/bash

### Variables ###
# Change this to a local cache repo for classrooms
SBT_URL="https://github.com/varokas/fbt/releases/download/sbt-0.13.13/sbt-sbt-0.13.13.tar.gz"
IVY2_URL="https://github.com/varokas/fbt/releases/download/ivy2-sbt-0.13.13-scala-2.11.8-play-2.25.12/ivy2-sbt-0.13.13-scala-2.11.8-play-2.25.12.tar.gz"

### Main ###
SBT_FILE=${SBT_URL##*/}
IVY2_FILE=${IVY2_URL##*/}

echo "Getting $SBT_FILE ..."
curl -L -o $SBT_FILE $SBT_URL

echo 
echo "Extracting $SBT_FILE ..."
tar -xzf $SBT_FILE -C ~

echo
echo "Getting $IVY2_FILE ..."
curl -L -o $IVY2_FILE $IVY2_URL

echo
echo "Extracting $IVY2_FILE ..."
tar -xzf $IVY2_FILE -C ~
