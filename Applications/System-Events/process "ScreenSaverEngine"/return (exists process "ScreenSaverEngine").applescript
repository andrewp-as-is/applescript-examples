#!/usr/bin/osascript

tell application "System Events"
	return (exists process "ScreenSaverEngine")
end tell