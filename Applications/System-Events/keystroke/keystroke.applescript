#!/usr/bin/osascript

tell application "Terminal"
	activate
	tell application "System Events"
		tell process "Terminal"
			keystroke "f" using {command down, option down}
		end tell
	end tell
end tell

tell application "Terminal"
	#return bounds of front window is {0, 0, 1600, 1200} and zoomed is true
end tell