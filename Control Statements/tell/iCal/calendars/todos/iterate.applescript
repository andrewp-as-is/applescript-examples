#!/usr/loca/bin/osascript
tell application "iCal"
	repeat with t in every todo of every calendar
		properties of t
	end repeat
end tell