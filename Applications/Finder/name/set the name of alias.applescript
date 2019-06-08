#!/usr/bin/osascript


tell application "Finder"
	set f to (make new file at desktop) as alias
	set the name of f to "webloc"
	delete file f
end tell