#!/usr/bin/osascript

on isFullScreen()
	tell application "System Events"
		try
			tell front window of (first process whose frontmost is true)
				return value of "AXFullScreen"
			end tell
		end try
	end tell
	return false
end isFullScreen


isFullScreen()
