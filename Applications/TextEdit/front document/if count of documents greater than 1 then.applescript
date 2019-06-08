#!/usr/bin/osascript

tell application "TextEdit"
	if count of documents greater than 1 then
		tell front document to close
	end if
end tell
