#!/usr/bin/osascript
set a to "/path/to/script.applescript"
set f to "/path/to/folder"

tell application "System Events"
	attach action to POSIX file a as alias using (POSIX file f as alias)
end tell