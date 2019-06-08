#!/usr/bin/osascript


set cmd to "/usr/local/bin/wget -nv -P /path/to/dir http://www.google.com  2>&1"
set var to do shell script cmd