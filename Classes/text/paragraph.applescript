on replace(tofind, toreplace, TheString)
	if class of tofind is list then
		set res to TheString
		repeat with tofind_item in tofind
			set res to replace(tofind_item, toreplace, res)
		end repeat
		return res
	else
		if tofind is not missing value and toreplace is not missing value and TheString is not missing value then
			set ditd to text item delimiters
			set text item delimiters to tofind
			set textItems to text items of TheString
			set text item delimiters to toreplace
			if (class of TheString is string) then
				set res to textItems as string
			else -- if (class of TheString is Unicode text) then
				set res to textItems as Unicode text
			end if
			set text item delimiters to ditd
			return res
		else
			return TheString
		end if
	end if
end replace