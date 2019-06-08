#!/usr/bin/osascript
tell application "System Events"
	tell application process "Google Chrome"
		set uri to get value of text field 1 of tool bar 1 of front window
	end tell
end tell