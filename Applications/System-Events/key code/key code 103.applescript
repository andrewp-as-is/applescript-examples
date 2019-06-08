#!/usr/bin/osascript

-- show/hide toggle Desktop
tell application "System Events" to key code 103
tell application "System Events" to key code 103
-- toggle desktop in slow motion
tell application "System Events" to key code 103 using shift down

-- hide desktop:
-- open -a Terminal # make visible
-- osasript -e 'tell application "System Events" to key code 103' # hide

-- show desktop:
-- open -a anyapp
(*
function Desktop.hide() {
	{ set +x; } 2>/dev/null
	# Desktop state unknown, F3 toggle Desktop
	# ( set -x; osascript -e 'tell application "System Events" to key code 103' )
	# open 2 different apps required
	( set -x; open -a Finder )
	( set -x; open -a Terminal )
}
function Desktop.show() {
	{ set +x; } 2>/dev/null
	# 1) hide Desktop
	( set -x; open -a Terminal ) || return
	# 2) sleep
	( set -x; sleep 0.5 ) # required
	# 3) show Desktop
	( set -x; osascript -e 'tell application "System Events" to key code 103' )
}
*)
