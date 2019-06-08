tell application "Terminal"
	repeat with t in every tab of every window
		get properties of t
	end repeat
end tell

tell application "Terminal"
	repeat with t in every tab of every window whose custom title is "bash"
		get properties of t
	end repeat
end tell