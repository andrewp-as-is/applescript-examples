tell application "Terminal"
	activate
	tell application "System Events"
		tell process "Terminal"
			keystroke "w" using {command down}
			#keystroke "W" using {command down} # +SHIFT
		end tell
	end tell
end tell