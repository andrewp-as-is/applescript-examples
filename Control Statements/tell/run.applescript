#!/usr/bin.osascript
try
	do shell script "ps -ax | grep Growl | grep -v grep"
on error # not found, raise error
	do shell script "open -a Growl"
end try