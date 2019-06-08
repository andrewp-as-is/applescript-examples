#!/usr/bin/env osascript

tell application "Reminders"
	make new list with properties {name:"Name"}
	tell list "Name" to show
	activate
end tell
