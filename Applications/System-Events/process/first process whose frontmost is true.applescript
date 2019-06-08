#!/usr/bin/osascript

tell application "System Events"
	name of (first process whose frontmost is true)
end tell