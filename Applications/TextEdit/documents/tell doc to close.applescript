#!/usr/bin/osascript

tell application "TextEdit"
	repeat with doc in every documents
		try
			if count of (paragraphs of doc) is 0 then
				tell doc to close saving no
			end if
		end try
	end repeat
end tell
