on replace(tofind, toreplace, TheString)	
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
end replace

replace(" ","\\ ","/long path/to/")
--> /long\ path/to/

set filename to "/long path/to/difficalt() file"
set replaces to {" ","(",")"}
repeat with r in replaces
	set filename to replace(r,"\\"&r,filename)
end repeat
filename