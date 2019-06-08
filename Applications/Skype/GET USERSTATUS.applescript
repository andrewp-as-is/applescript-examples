#!/usr/bin/osascript

tell application "Skype"
	send command "GET USERSTATUS" script name "applescript"
	--"USERSTATUS ONLINE"
end tell
