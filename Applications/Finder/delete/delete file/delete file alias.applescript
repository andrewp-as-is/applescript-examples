#!/usr/bin/osascript

tell application "Finder"
	set f to (make new file at desktop) as alias
	delete file f
end tell