set rec to {name:"Bob", full_name:"Bob Smith", age:24, married:true, income:55000}
--> {name:"Bob", full_name:"Bob Smith", age:24, married:true, income:55000}
# set rec to {full name :"Bob Smith"} # error

class of rec
--> record

length of rec
count rec
--> 4

name of rec
--> "Bob"
# properties of rec # error

set name of rec to "John"
--> "John"

{model:"Focus", year:2008} & {maker:"Ford"}
--> {model:"Focus", year:2008, maker:"Ford"}

{model:"Focus", year:2008, maker:"Ford"} = {year:2008, maker:"Ford", model:"Focus"}
--> true

{year:2008, model:"Focus", maker:"Ford"} contains {model:"Focus"}
--> true
{year:2004} is in {year:2008, maker:"Ford", model:"Focus"}
--> false


