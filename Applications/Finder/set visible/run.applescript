#!/usr/bin/osascript

tell application "Finder"
	set visible of every process to false
end tell
tell application "Finder"
	set visible of every process ¬
	whose visible is true and name is not "Finder" to false
end tell
delay 1
--repeat for sure
tell application "Finder"
	set visible of every process ¬
	whose visible is true and name is not "Finder" to false
end tell
tell application "Reminders"
	activate
end tell
