#!/usr/bin.osascript

on is_installed(appname)
	tell application "Finder" to set Answer_ to exists application file ((path to applications folder as string) & appname)
end is_installed