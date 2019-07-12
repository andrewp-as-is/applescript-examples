#!/usr/bin/osascript

set HISTSIZE to 32768
if ("HISTSIZE" is in system attribute) then
  set HISTSIZE to (system attribute "HISTSIZE") as integer
end if
