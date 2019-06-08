tell application "Terminal"
	do script "ls; clear" in selected tab of front window # execute in selected tab
end tell

tell application "Terminal"
	tell front window
		tell selected tab
			do script "ls; clear" # open new tab!!!
		end tell 
	end tell
end tell