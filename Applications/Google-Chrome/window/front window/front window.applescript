tell application "Google Chrome"
if count of windows>0 then
	get properties of front window
	zoomed of front window
	presenting of front window
	minimized of front window
	name of front window
	active tab of front window
	active tab of front window
	minimizable of front window
	mode of front window
	minimizable of front window
	class of front window
	closeable of front window
	resizable of front window
	visible of front window
	zoomable of front window
	bounds of front window
	index of front window
	active tab index of front window
	else
		return "no windows"
	end if
end tell

