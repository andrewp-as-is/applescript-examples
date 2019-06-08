#!/usr/bin/osascript

set the_source_code to ¬
	"on run {first_value, second_value}
          return first_value * second_value
       end run"
run script the_source_code with parameters {7, 6}
--> 42