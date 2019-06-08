#!/usr/bin/osascript

try
	er
on error errorMessage number errorNumber
	set err to errorMessage & return & "errorNumber: " & errorNumber
	display alert (err)
end try