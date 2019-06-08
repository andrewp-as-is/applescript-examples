#!/usr/bin/osascript
set theFolderPath to choose folder
set SelectedScripts to choose file


tell application "System Events"
	attach action to alias ":" using (SelectedScripts as alias)
end tell