#!/usr/bin/osascript

run script "return 1"
try
	run script "func()"
on error
	return "error"
end try