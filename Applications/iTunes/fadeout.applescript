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

on is_playing(state) #
	considering case
		return (state is "playing") or ("kPSP" is in state)
	end considering
end is_playing

on set_volume(volume)
	tell application "iTunes" to set the sound volume to volume
end set_volume

on run args # fadeout volume to 0, pause and then restore volume (not play)
	set secs to 5
	if count of args > 0 then
		set secs to item 1 of args
	end if
	set current_volume to get_volume()
	if is_running("iTunes") then
		if is_playing(iTunes_state()) then
			set state to "playing"
			repeat with i from get_volume() to 0 by -1
				set_volume(i)
				delay secs / (current_volume + 1)
			end repeat
			tell application "iTunes" to pause
			set_volume(current_volume) # after pause restore volume
			return 1
		end if
	end if
end run