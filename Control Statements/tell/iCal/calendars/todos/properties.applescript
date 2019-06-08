#!/usr/loca/bin/osascript
tell application "iCal"
	repeat with c in every calendar
		tell c
			repeat with t in every todo
				get properties of t
			end repeat
		end tell
	end repeat
end tell