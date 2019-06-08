# kind: boolean/date/list/number/record/string

on new_file(filename)
	global API
	if (is_exists(filename) of filesystem of API) = false then
		tell application "System Events"
			return make new property list file with properties {contents:make new property list item with properties {kind:record}, name:filename}
		end tell
	end if
end new_file

on get_key(filename, key_name)
	tell application "System Events"
		tell property list file filename
			tell contents
				return property list item key_name
			end tell
		end tell
	end tell
end get_key

on is_exists(filename, key_name)
	try
		tell application "System Events"
			tell property list file filename
				tell contents
					set key_value to value of property list item key_name
				end tell
			end tell
		end tell
		return true
	on error
		return false
	end try
end is_exists

on new_item(filename, key_name, key_value) # set key value
	if is_exists(filename, key_name) = false then
		tell application "System Events"
			tell property list file filename
				make new property list item at end of property list items of contents with properties {kind:number, name:key_name, value:key_value}
			end tell
		end tell
	end if
end new_item

on get_value(filename, key_name) # return key value
	global API
	if is_exists(filename) of filesystem of API then # file is exists
		if is_exists(filename, key_name) then
			using terms from application "System Events"
				return value of get_key(filename, key_name)
			end using terms from
		end if
	end if
	return missing value
end get_value

# kind: boolean/date/list/number/record/string

on set_value(filename, key_name, key_value) # set key value
	new_file(filename)
	set clss to get class of key_value

	if clss = integer or clss = number then
		set clss to number
		set key_value to key_value as number
	end if
	if clss = string or clss = text then
		set clss to string
	end if
	if clss is in {boolean, date, list, number, real, record, string} then
		if is_exists(filename, key_name) then # key is exists
			tell application "System Events"
				tell property list file filename
					tell contents
						set value of property list item key_name to key_value
						return key_value
					end tell
				end tell
			end tell
		else
			new_item(filename, key_name, key_value)
		end if
	else
		error "bad plist key type (" & clss & "). allowed are boolean, date, list, number, record, string"
	end if
end set_value

#test
set API to load script POSIX path of (path to home folder) & "/Library/Scripts/API/init.scpt"
tell API to run

set filename to POSIX path of (path to home folder) & "test.plist"
rm(filename) of filesystem of API
new_file(filename)
set_value("/Users/user/git/mac-os-github-notifier/mac-os-github-notifier.plist", "updated", date2unixtime(current date) of datetime of API)
