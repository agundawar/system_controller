#!/bin/sh

FILEPATH="/Users/Akhil/Desktop/padhai/browser_controller"
LOGPATH="/Users/Akhil/Desktop/padhai/browser_controller/server.log"
ERRORPATH="/Users/Akhil/Desktop/padhai/browser_controller/error.log"

cmd_to_run="ruby $FILEPATH/browser_controller.rb"

`$cmd_to_run >> $LOGPATH 2> $ERRORPATH`
exit 0
