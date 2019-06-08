#!/usr/bin.osascript

tell application "System Events"
	tell (first process whose frontmost is true) to return properties
end tell
