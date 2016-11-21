#tell application "Google Chrome"
	#Activate
	#make new window
#end tell


#tell application "Finder" to get the name of front Finder window
#tell application "Finder" to open home
#tell application "Finder" to open the startup disk
#tell application "Finder" to  get the index of Finder window "Macintosh HD"
#tell application "Finder" to get the name of Finder Window 1
#tell application "Finder" to get the index of the 1st Finder window

tell application "Finder" to open the startup disk
tell application "Finder" to open home
tell application "Finder" to get the name of Finder Window 1
tell application "Finder" to  set the index of the last Finder window to 1
tell application "Finder" to get the name of Finder Window 1