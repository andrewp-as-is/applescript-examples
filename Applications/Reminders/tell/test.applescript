#!/usr/bin/env osascript

tell application "Reminders"
	make new list with properties {name:"test"}
	make new list with properties {name:"test2"}
	make new list with properties {name:"tes3"}
	make new list with properties {name:"test4"}
	make new list with properties {name:"test5"}
	make new list with properties {name:"test6"}
	make new list with properties {name:"test7"}
	make new list with properties {name:"test8"}
	make new list with properties {name:"test9"}
	make new list with properties {name:"test10"}
	repeat with l in every list
		set _id to (id of l)
		delete list id _id
	end repeat 
end tell
