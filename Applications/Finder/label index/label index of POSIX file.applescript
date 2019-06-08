#!/usr/bin/osascript

tell application "Finder"
	label index of (POSIX file "/Users" as alias)
end 
