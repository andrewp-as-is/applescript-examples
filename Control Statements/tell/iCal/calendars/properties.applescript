#!/usr/loca/bin/osascript
tell application "iCal"
	repeat with c in every calendar
		tell c
			get properties of c
			#return uid
		end tell
	end repeat
end tell