#!/usr/bin/osascript

tell application "Finder"
    set theWindowList to every Finder window
    repeat with i from 1 to number of items in theWindowList
        set w to item i of theWindowList
        log tabs of w
    end repeat
end tell
