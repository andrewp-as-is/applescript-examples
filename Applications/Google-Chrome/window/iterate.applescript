tell application "Google Chrome"
	repeat with w in every window
		get properties of w
		name of w
		repeat with t in every tab of w
			get properties of t
		end repeat
	end repeat
end tell
