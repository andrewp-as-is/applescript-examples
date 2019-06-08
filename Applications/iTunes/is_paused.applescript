#!/usr/bin/osascript

on is_paused(state) 
	considering case
		return (state is "paused") or ("kPSp" is in state)
	end considering
end is_paused