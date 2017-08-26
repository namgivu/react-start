#!/usr/bin/env bash

#get SCRIPT_HOME=executed script's path, containing folder, cd & pwd to get container path
s=$BASH_SOURCE ; s=$(dirname "$s") ; s=$(cd "$s" && pwd) ; export COMMON_SCRIPT_HOME=$s

s="$COMMON_SCRIPT_HOME/.." ; s=$(cd "$s" && pwd) ; export APP_HOME=$s
REACT_STARTER_KIT="$APP_HOME/react-starter-kit"
PORT=17826
