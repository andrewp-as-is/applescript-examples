#!/usr/bin/osascript
try
	do shell script "ererer"
on error errorMessage number errorNumber
	set err to errorMessage & return & "errorNumber: " & errorNumber
	--display alert (err)
end try