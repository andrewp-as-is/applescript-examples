#!/usr/bin/osascript

set cmd to "echo ''"
set stdout to do shell script cmd
if stdout is "" then
	return "empty"
end if