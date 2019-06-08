#!/usr/bin/osascript



--> http://rosettacode.org/wiki/Named_parameters#AppleScript


on getName(x)
	set {firstName, lastName} to {"?", "?"}
	try
		set firstName to x's firstName
	end try
	try
		set lastName to x's lastName
	end try
end getName

getName({firstName:"John", lastName:"Doe"})
--> Returns: "John, Doe"
getName({lastName:"Doe"})
--> Returns: "?, Doe"