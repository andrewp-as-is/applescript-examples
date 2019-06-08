#!/usr/bin/osascript

on growlnotify()
	tell application "Finder"
		set installed to exists POSIX file "/bin/growlnotify"
	end tell
	if installed then
		do shell script "growlnotify -a Finder"
	else
		display alert "/bin/growlnotify not exists"
	end if
end growlnotify

growlnotify()