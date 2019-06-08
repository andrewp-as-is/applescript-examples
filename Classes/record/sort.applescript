set l to {}
set end of l to {name:"name", int:1}
set end of l to {name:"name2", int:3}
set end of l to {name:"nam3", int:2}
set end of l to {name:"name4", int:4}

on sort(l, field)
    repeat with i from (count l) to 2 by -1
        set a to beginning of l
        repeat with j from 2 to i
            set b to item j of l
            if int of a > int of b then
                set item (j - 1) of l to b
                set item j of l to a
            else
                set a to b
            end if
        end repeat
    end repeat
    return l
end sort

sort(l, "title")
--> {{name:"name", int:1}, {name:"nam3", int:2}, {name:"name2", int:3}, {name:"name4", int:4}}
