#!/usr/bin/osascript


tell application "Finder"
	reveal POSIX file (POSIX path of (path to me))
end tell