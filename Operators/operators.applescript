# Concat
"Hello, " & "World!"
--> "Hello, World!"

set the_price to "$" & 6
--> "$6"

set the_price to "$" & "6"
--> "$6"

set the_price to 6 & " Dollar" # first operand is a number and not a string
--> {6, " Dollar"}

set the_price to (6 as text) & " Dollar"
--> "6 Dollar"

# Compare
"Ice cream" = "carrot"
--> false

"Ice cream" is "carrot"
--> false

"Ice cream" is equal to "carrot"
--> false

"Me" is not "You"
--> true

"Me" is not equal to "You"
--> true

"ASCII" = "ascii"
--> true
