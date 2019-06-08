tell application "iTerm"
    repeat with w in every window
        get properties of w
        tell w 
        	document
        	visible
        	name
        	titled
        end tell
    end repeat
end tell
