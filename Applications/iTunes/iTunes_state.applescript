#!/usr/bin/osascript

on iTunes_state() #{playing, paused, stopped}
	tell application "iTunes" to return (get player state as string)
end iTunes_state

iTunes_state()