#!/usr/bin/env osascript

tell application "Reminders"
	repeat with l in every list
		tell l
			if count of reminders is 0 then
				delete list (name of l)
			end if
		end tell
	end repeat 
end tell
