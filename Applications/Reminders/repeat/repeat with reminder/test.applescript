#!/usr/bin/env osascript

tell application "Reminders"
	set list_ids to {}
	repeat with l in every list
		tell l
			repeat with r in every reminder
				get name of r
			end repeat 
		end tell
	end repeat 
end tell
