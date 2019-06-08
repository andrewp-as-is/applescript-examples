#!/usr/bin/osascript

on growlnotify(t, m)
	do shell script "growlnotify -a Finder -t '" & t & "' -m '" & m & "'"
end growlnotify

growlnotify("t", "m")
