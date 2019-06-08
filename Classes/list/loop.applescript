set potato_list to {"small potato", "big potato", "banged potato", "round potato"}
repeat with i from 1 to (length of potato_list)
    set potato to item i of potato_list
    # ...
end repeat

repeat with potato in potato_list

end repeat
