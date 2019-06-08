#!/usr/bin/osascript

tell application "System Events"
	tell (first process whose title is "iTunes")
		tell front window
			--AXFullScreen
			properties
		end tell
	end tell
end tell
