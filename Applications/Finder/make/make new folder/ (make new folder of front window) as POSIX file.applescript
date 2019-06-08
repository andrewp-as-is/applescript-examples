#!/usr/bin/osascript
tell application "Finder"
	set f to (make new folder of front window) as POSIX file
end tell

POSIX path of f