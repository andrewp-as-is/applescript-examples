#!/usr/bin/osascript


set iTunes to  load script file ((path to scripts folder from user domain as text) & "itunes.scpt")


чтобы выполнить скрипт (загрузить переменные и тд в скрипте) нужно 
tell iTunes to run




on do_something(action_name)
    display dialog "I'm in ur library, " & action_name & "."
end do_something
set test_lib to load script alias ((path to desktop as text) & "TestLib.scpt")

tell test_lib
   do_something("handlin' ur command")
end tell