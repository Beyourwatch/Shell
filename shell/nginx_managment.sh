#!/bin/bash

#Function

function start {
  echo "start"
}

function stop {
  echo "stop"
}

function restart {
  echo "restart"
}

function reload {
  echo "reload"
}

function status {
  echo "status"
}


#input call

case $1 in 
start) start;;
stop) stop;;
restart) restart;;
reload) reload;;
status) status;;
*) echo "USAGE: $0 start|stop|restart|reload|status";;
esac


