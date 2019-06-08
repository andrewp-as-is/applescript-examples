#!/usr/bin/osascript

tell application id "com.Growl.GrowlHelperApp"
	set appname to "run.finder-toolbar"
	set title to "title"
	set description to " description"
	set notification to "error"
	set the notifications to {notification}
	set the notification to {notification}
	
	register as application appname ¬
		all notifications notifications ¬
		default notifications notification ¬
		icon of application "Finder"

	notify with name notification ¬
		title _title ¬
		description _description ¬
		application name appname ¬
		with sticky
end tell
