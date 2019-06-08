#!/usr/bin/osascript

tell application "Terminal"
	repeat with w in every window
		get properties of w
		tell w
			name
		end tell
	end repeat
end tell