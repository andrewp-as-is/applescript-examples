#!/usr/bin/osascript

set uri to "https://github.com/"
on wget(uri)
	set cmd to "wget -P " & quoted form of dir & " " & quoted form of uri
	do shell script cmd

end wget