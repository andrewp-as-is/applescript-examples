#!/usr/bin/osascript

set xxVar to 0
tell application "System Events"
  tell process "SystemUIServer"
    set xVar to value of attribute "AXChildren" of menu bar 1
    set cVar to count of xVar
    repeat with iVar from 1 to cVar
      set zVar to value of attribute "AXDescription" of item iVar of xVar
      try
        if zVar = "spaces menu extra" then
          set xxVar to iVar
          exit repeat
        end if
      end try
    end repeat
  end tell
end tell
if xxVar = 0 then
  display dialog "Spaces Menu Extra not installed"
else
  tell application "System Events"
    tell process "SystemUIServer"
      set theCurrentSpace to value of menu bar item xxVar of menu bar 1
    end tell
  end tell
  
  -- Do what you want with "theCurrentSpace" variable starting here
  get theCurrentSpace as number
  -- Do what you want with "theCurrentSpace" variable ending here
  
end if