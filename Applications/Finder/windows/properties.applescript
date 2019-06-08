#!/usr/bin/osascript

tell application "Finder"
	repeat with w in every windows
		log w
		log (get properties of w)
	end repeat
end tell
