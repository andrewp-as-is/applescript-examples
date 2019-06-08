#!/usr/loca/bin/osascript
tell application "iCal"
	repeat with c in every calendar
		tell c
			repeat with e in every events
				get properties of e
			end repeat
		end tell
	end repeat
end tell