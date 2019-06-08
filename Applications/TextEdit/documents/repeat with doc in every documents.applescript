#!/usr/bin/osascript

tell application "TextEdit"
	repeat with doc in every documents
		log doc
	end repeat
end tell
