#!/usr/bin/osascript

tell application "Google Chrome"
    if count of windows is not 0 then return URL of active tab of first window
end tell
