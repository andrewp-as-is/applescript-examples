#!/usr/bin/env osascript

tell application "Reminders"
   set l to make new list with properties {name:"Test"}
   tell l
		set r to make new reminder with properties {name:"Test Reminder", body:"New Reminder"}
   		set _properties to properties of r
   end tell
   delete l
   _properties
end tell
