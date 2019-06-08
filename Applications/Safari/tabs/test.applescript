#!/usr/bin/osascript

tell application "Safari"
	if number of windows is greater than 1 then
		repeat with w from 1 to (number of windows) -1
			log w
			log (count of tabs of window 1)
		end repeat
	end if
end tell

