#!/usr/bin/osascript

tell application "Finder"
	set f to POSIX path of (make new file at desktop) as alias
	delete file POSIX file f
end tell