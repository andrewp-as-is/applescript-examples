#!/usr/bin/osascript

set home to POSIX path of (path to home folder)
set smart to home & "/git/Smart Folders.gist/python.savedSearch"



tell application "Finder"
	set l to every folder in (POSIX file smart as alias)
	repeat with f in l
		name of f as text
		displayed name of f
		properties of f
		POSIX path of (f as alias)
	end repeat
end tell