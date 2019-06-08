tell application "iTerm"
    repeat with w in every window
    tell w
    	repeat with t in every tab of w
    	t
    	tell repeat
    end tell
    end repeat
end tell
