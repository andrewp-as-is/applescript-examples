#!/usr/bin.osascript

on is_running(appname)
	tell application "System Events" to return (count of (processes whose name is appname)) > 0
end is_running

# shell way
try
	do shell script "ps -ax | grep Growl | grep -v grep"
	return true
on error # not found, raise error
	return false
end try

is_running("Growl")