tell application "Terminal"
	tell front window
	return first tab
		tell first tab
			# custom title
			# font
			# title displays device name
			# cursor color
			# current settings
			# title displays shell path
			# tty
			# normal text color
			# title displays window size
			# title displays custom title
			# contents
			# history
			# selected
			# size
			# bold text color
			# busy status
			# column
			#return class busy of (get properties)
			#return get busy status
			return get busy
		end tell
	end tell
end tell