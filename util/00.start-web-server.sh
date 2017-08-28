#!/usr/bin/env bash

#get SCRIPT_HOME=executed script's path, containing folder, cd & pwd to get container path
s=$BASH_SOURCE ; s=$(dirname "$s") ; s=$(cd "$s" && pwd) ; export SCRIPT_HOME=$s

source "$SCRIPT_HOME/common.sh"

#START_FOLDER=$REACT_STARTER_KIT
START_FOLDER=$APP_HOME

#print guideline
echo "
React Starter Kit is now ready at
http://localhost:$PORT
this serves the sample web pages located at
$START_FOLDER
"

#start the web server
#cd $REACT_STARTER_KIT
cd $START_FOLDER
python -m SimpleHTTPServer $PORT
cd --
