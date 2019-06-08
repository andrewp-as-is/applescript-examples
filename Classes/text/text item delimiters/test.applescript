#!/usr/bin/osascript

set text item delimiters to "-"
get every text item of "800-555-1212"
--> {"800", "555", "1212"}

set the_email_address to "info@store.apple.com"
set text item delimiters to "@"
set the_domain to text item -1 of the_email_address
--> "store.apple.com"

set the_path to "/Users/hanaan/Work/todo.txt"
set text item delimiters to "/"
set the_parent_path to text 1 thru (text item -2) of the_path
--> "/Users/hanaan/Work"

set the_phone_number to "(800) 555-1212"
set text item delimiters to {"(", ")", "-", " "}
set the_list to text items of the_phone_number
set text item delimiters to ""
set the_cleaned_phone_number to the_list as text
--> "8005551212"