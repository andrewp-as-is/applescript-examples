#!/usr/bin/osascript

tell application "Google Chrome"
	if count of windows is not 0 then front tab of (front window)
end tell

