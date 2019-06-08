tell application "Terminal"
	#set newTab to do script # create a new window with no initial command
end tell

tell application "Terminal"
	#set newTab to do script "ls"
end tell


tell application "Terminal"
	activate
	set t to do script with command "error command"
	return get contents of (get properties of t)
end tell
#return get contents of (get properties of t)