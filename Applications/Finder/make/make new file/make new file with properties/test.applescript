#!/usr/bin/osascript

tell application "Finder" 
	make new file at desktop with properties {name:"pic.jpg", creator type:"8BIM", comment:"Hi!"}
end tell