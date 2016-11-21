
#Script to hide the application

set app_v to system attribute "my_foo"
if application app_v is running then
	tell application "Finder"
		set visible of process app_v to false
	end tell
end if