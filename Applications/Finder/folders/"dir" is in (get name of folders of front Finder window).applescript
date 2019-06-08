#!/usr/bin/osascript

tell application "Finder"
	"dir" is in (get name of folders of front Finder window)
end tell
