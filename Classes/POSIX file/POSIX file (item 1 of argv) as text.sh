#!/usr/bin/env bash

set -- "${BASH_SOURCE[0]%/*}"

osascript - "$@" <<EOF || exit
on run argv
    tell application "Finder"
        set _posix_file to POSIX file (item 1 of argv) as text
        log _posix_file
        log POSIX path of _posix_file
    end tell
end run
EOF
