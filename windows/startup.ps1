#!/bin/sh

FILEPATH="C:\Users\IEUser\Desktop\browser_controller"
LOGPATH="C:\Users\IEUser\Desktop\browser_controller\server.log"
ERRORPATH="C:\Users\IEUser\Desktop\browser_controller\error.log"

cmd_to_run="ruby $FILEPATH\browser_controller.rb"

`$cmd_to_run >> $LOGPATH 2> $ERRORPATH`
exit 0