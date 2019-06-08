#!/usr/bin/osascript
set newIcon to (POSIX file "/this/is/the/path/to/the/icon") as alias
set theItem to (POSIX file "/this/is/the/path/to/the/location") as alias

tell application "Finder"
  activate
  set infoWindow to open information window of newIcon
  set infoWindowName to name of infoWindow
end tell

tell application "System Events"
  tell application process "Finder"
    tell window infoWindowName
      keystroke tab
      delay 1
      keystroke "c" using command down
    end tell
  end tell
end tell

tell application "Finder"
  close infoWindow
  set infoWindow to open information window of theItem
  set infoWindowName to name of infoWindow
end tell

tell application "System Events"
  tell application process "Finder"
    tell window infoWindowName
      keystroke tab
      delay 1
      keystroke "v" using command down
    end tell
  end tell
end tell

tell application "Finder"
  close infoWindow
end tell