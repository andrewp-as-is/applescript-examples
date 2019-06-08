#!/usr/bin/osascript
tell application "System Events"
	return count of (processes whose name is "VLC")
end tell