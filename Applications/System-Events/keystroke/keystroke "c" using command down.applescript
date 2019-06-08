#!/usr/bin/osascript

tell application "System Events"
   keystroke "c" using command down
   delay 0.1
end tell
set theText to the clipboard