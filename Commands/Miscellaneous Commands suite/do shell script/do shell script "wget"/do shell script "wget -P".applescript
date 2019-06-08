#!/usr/bin/osascript

set dir to "~/test"
set uri to "https://github.com/"
set cmd to "/usr/local/bin/wget -P " & quoted form of dir & " " & quoted form of uri