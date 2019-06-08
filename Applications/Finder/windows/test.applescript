#!/usr/bin/osascript

tell application "Finder"
    set theWindowList to every Finder window
    repeat with w from 1 to number of items in theWindowList
        if w is not front Finder window then
            tell w to close
        end if
    end repeat
end tell
