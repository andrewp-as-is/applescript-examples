
tell application "Google Chrome"
	repeat with w in every window
		tell w
			close
		end tell
	end repeat
end tell