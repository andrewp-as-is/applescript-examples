on is_running(appname)
	tell application "System Events" to return (count of (processes whose name is appname)) > 0
end is_running

if is_running("iCal") then
	tell application "iCal" to delete (every todo of (every calendar) whose completion date < (current date))
end if