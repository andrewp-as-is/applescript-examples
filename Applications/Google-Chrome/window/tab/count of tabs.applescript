tell application "Google Chrome"
	if count of windows>0 then
		tell front window 
			count of tabs
		end tell
	end if
end tell