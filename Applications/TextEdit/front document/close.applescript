#!/usr/bin/osascript

tell application "TextEdit"
	if count of documents greater than 1 then
		tell front document to close
	end if
	if count of documents greater than 1 then
		tell front document to close saving no
	end if
end tell
