#!/usr/bin/osascript

tell application "Finder"
	name extension of (selection as alias)
end tell