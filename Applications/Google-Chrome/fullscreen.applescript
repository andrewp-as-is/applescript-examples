#!/usr/bin.osascript

tell application "Google Chrome"
	activate
	tell application "System Events"
		tell process "Google Chrome"
			--keystroke "f" using {command down, control down}
		end tell
	end tell
end tell


tell application "Google Chrome"
if count of windows is not 0 then
    bounds of front window
	--return bounds of front window is {0, 0, 1600, 1200} and zoomed is true
end if
end tell
