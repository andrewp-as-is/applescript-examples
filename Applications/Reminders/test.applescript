#!/usr/bin/env osascript

tell application "Reminders"
   make new list with properties {name:"Test"}
   set mylist to list "Test"
   tell mylist
       make new reminder with properties {name:"Test Reminder", body:"New Reminder"}
   		show
   end tell
end tell
