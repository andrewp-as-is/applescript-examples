#!/usr/bin/env osascript

tell application "Reminders"
	if not exists list "Test" then
		make new list with properties {name:"Test"}
	end if
	exists list "Test"
end tell
