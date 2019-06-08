#!/usr/bin/osascript

tell application "Google Chrome"
    if count of windows is not 0 then return title of active tab of front window
end tell
