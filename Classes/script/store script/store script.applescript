script foo
	property x : 5
end script

set path2me to (POSIX path of (path to me))
set dirname to do shell script "dirname " & path2me
set x of foo to 8
store script foo in dirname & "/foo.scpt" # x of foo still 5