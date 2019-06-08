#!/usr/bin.osascript

tell application "System Events"
	return processes whose "Google" is in name
end tell

tell application "System Events"
	#return processes whose title is "Google Chrome"
end tell
delay 4
tell application "System Events"
	title of (first process whose frontmost is true) # "Chrome"
end tell

tell application "System Events"
	name of (first process whose frontmost is true) # "Google Chrome"
end tell
