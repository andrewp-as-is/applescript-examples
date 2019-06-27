#!/usr/bin/osascript

tell application "Skype"
	send command "SEARCH ACTIVECALLS" --script name "applescript"
	--"USERSTATUS ONLINE"
end tell
