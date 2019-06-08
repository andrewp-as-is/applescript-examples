#!/usr/bin/osascript

set fullpath to "/Library/Scripts/Folder Actions/Attach Script to Folder.scpt"
set a to POSIX file fullpath as alias
tell application "Finder"
	name extension of a
end tell