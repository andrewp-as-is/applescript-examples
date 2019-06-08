# http://developer.apple.com/library/mac/#documentation/applescript/conceptual/applescriptlangguide/reference/ASLR_control_statements.html


try
	display alert "Hello" buttons {"Cancel", "Yes", "No"} cancel button 1
on error errText number errNum
	if (errNum is equal to -128) then
		-- User cancelled.
		display dialog "User cancelled."
	else
		display dialog "Some other error: " & errNum & return & errText
	end if
end try
w