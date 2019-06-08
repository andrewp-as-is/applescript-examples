tell application "Finder"
	set l to every file in (POSIX file "/Users/user" as alias)
	repeat with f in l
		#return get properties of f
		name of f as text
		name extension of f as text
		properties of f
		return folder of f
	end repeat
	return l
end tell
