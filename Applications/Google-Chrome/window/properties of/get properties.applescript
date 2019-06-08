#!/usr/bin/osascript

tell application "Google Chrome"
	repeat with w in every window
		log (get properties of w)
		--zoomed
		--presenting
		--miniaturized
		--name
		--active tab
		--mode # mode:"normal"
		--miniaturizable
		--class:window
		--closeable
		--resizable
		--visible
		--zoomable
		--id
		--bounds:{0, 22, 1600, 1114}
		--index:2
		--active tab index:1}
	end repeat
end tell