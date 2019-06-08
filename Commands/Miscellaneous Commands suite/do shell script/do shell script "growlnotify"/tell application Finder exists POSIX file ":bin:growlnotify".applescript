#!/usr/bin/osascript

tell application "Finder"
	set installed to exists POSIX file "/bin/growlnotify"
end tell

