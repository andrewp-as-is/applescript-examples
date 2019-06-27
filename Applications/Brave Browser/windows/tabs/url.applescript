#!/usr/bin/env osascript

tell application "Brave Browser"
    repeat with w in every window
        repeat with t in every tab of w
            get URL of t
        end repeat
    end repeat
end tell
