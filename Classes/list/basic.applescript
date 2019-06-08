#!/usr/bin/osascript
set my_list to {"A", "B", "C"}

class of {}
--> list

count my_list
length of my_list
--> 3

item 3 of my_list
--> "C"

middle item of my_list
--> "B"


set item 2 of my_list to "Y"
--> "Z"
my_list
--> {"A", "Y", "C"}

set end of my_list to "Z" # append
--> {"A", "Y", "C", "Z"}

rest of {"don't", "talk", "while", "you", "eat"} # all items a except the first one. 
--> {"talk", "while", "you", "eat"}
rest of {"time"}
--> {}

reverse of {"start", "middle", "nearly there", "finish"}
--> {"finish", "nearly there", "middle", "start"}

item 3 of {"a", "b", "c"}
--> "c"