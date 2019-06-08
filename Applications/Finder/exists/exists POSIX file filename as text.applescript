#!/usr/bin/osascript

tell application "Finder"
	exists POSIX file "/System/Library/Sounds/Glass.aiff"
end tell

set filename to "/System/Library/Sounds/Glass.aiff"

tell application "Finder"
	exists POSIX file filename as text --as text required
end tell