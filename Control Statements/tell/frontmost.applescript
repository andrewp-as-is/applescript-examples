#!/usr/bin.osascript

tell application "iTunes" to activate # frontmost application

on frontmost_app()
	tell application "System Events"
		return item 1 of (get name of processes whose frontmost is true)
	end tell
end frontmost_app

if frontmost_app() is "AppleScript Editor" then
	return "AppleScript Editor frontmost"
end if

frontmost_app()

