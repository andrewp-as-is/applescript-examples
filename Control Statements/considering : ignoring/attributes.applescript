(*
considering attribute [, attribute ... and attribute ] ¬
[ but ignoring attribute [, attribute ... and attribute ] ]
    -- One or more statements...
end considering

ignoring attribute [, attribute ... and attribute ] ¬
[ but considering attribute [, attribute ... and attribute ] ]
    -- One or more statements...
end ignoring

ignoring case, diacriticals, hyphens and white space
   set is_answer_correct to user_answer = actual_answer
end ignoring

considering case but ignoring diacriticals, hyphens and white space
   set is_answer_correct to user_answer = actual_answer
end considering

considering case
   ignoring diacriticals
      ignoring hyphens and white space
         set is_answer_correct to user_answer = actual_answer
      end ignoring
   end ignoring
end considering
*)


ignoring case
    "A" = "a"
end ignoring
--> true

considering case
    "A" = "a"
end considering
--> false

ignoring diacriticals
    "Résumé" = "Resume"
end ignoring
--> true

ignoring hyphens
    "1-800-555-1212" = "18005551212"
end ignoring
--> true

ignoring punctuation
    "That's all, right? Now!" = "Thats all right now."
end ignoring
--> true

ignoring white space
    "Space craft" = "Spacecraft"
end ignoring
--> true

considering numeric strings
    "Chapter 5.pdf" comes before "Chapter 10.pdf"
end considering
--> true

considering numeric strings
    "1.5.8" > "1.5.10"
end considering
--> false
