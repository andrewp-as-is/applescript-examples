#!/usr/bin/env osascript

tell application "System Events"
    tell process "Dock"
        get name of every UI element of list 1
    end tell
end tell
