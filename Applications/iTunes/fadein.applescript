#!/usr/bin/osascript

on is_running(appname)
	tell application "System Events" to return (count of (processes whose name is appname)) > 0
end is_running

on get_volume()
	tell application "iTunes" to return sound volume
end get_volume

on iTunes_state() #{playing, paused, stopped}
	tell application "iTunes" to return (get player state as string)
end iTunes_state

on is_paused(state) 
	considering case
		return (state is "paused") or ("kPSp" is in state)
	end considering
end is_paused

on set_volume(volume)
	tell application "iTunes" to set the sound volume to volume
end set_volume

on run args # restore from 0 to current volume
	set secs to 5
	if count of args > 0 then
		set secs to item 1 of args
	end if
	if is_running("iTunes") then
		if is_paused(iTunes_state()) then # paused
			set current_volume to get_volume() 
			set_volume(0) 
			tell application "iTunes" to play
			repeat with i from 0 to current_volume by 1
				set_volume(i)
				delay secs / (current_volume + 1)
			end repeat
		end if
	end if
end run