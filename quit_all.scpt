tell application "System Events" to set quitapps to name of every application process whose visible is true and name is not "Terminal"
repeat with closeall in quitapps 
	quit application closeall
end repeat