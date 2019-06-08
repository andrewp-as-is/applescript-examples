#!/usr/bin/osascript

tell application "Finder"
    set _target to (target of front Finder window as text)
    log (_target)
    set _target_path to (POSIX path of _target)
    --set _posix_path to POSIX path _posix_file
    --log _posix_file
    --log _posix_path
end tell
