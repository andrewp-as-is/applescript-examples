#!/usr/bin/osascript

on set_volume(volume)
	tell application "iTunes" to set the sound volume to volume
end set_volume