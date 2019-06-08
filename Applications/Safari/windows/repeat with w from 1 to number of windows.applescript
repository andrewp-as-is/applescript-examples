#!/usr/bin/osascript

tell application "Safari"
	repeat with w from 1 to number of windows
		log window w
	end repeat
end tell

