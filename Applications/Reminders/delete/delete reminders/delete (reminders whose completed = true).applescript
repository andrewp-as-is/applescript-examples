#!/usr/bin/env osascript

tell application "Reminders"
	delete (reminders whose completed = true)
end tell
