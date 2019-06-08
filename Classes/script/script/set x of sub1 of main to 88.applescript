#!/usr/bin/osascript

run script "beep 3"
run script "beep 3" in "AppleScript"

script foo
	property x : 5
end script

script foo2
	property parent : foo
end script

set foo2's x to 2
x of foo
--> 2

on new_sub_foo()
	script sub_foo
		property x : 5
	end script
end new_sub_foo

script main_foo
	property sub1 : new_sub_foo()
	property sub2 : new_sub_foo()
end script

property main : main_foo

set x of sub1 of main to 88
