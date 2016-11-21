
#Script to maximize the application

set app_v to system attribute "my_foo"
tell application app_v
	Activate
	tell application "System Events" to keystroke "f" using { command down, control down }
end tell