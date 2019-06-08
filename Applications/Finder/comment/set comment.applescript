#!/usr/bin/osascript

set home to POSIX path of (path to home folder)
set fullpath to home & ".gitignore"
set posix to POSIX file fullpath


tell application "Finder"
    set comment of (posix as alias) to "gitignore"
    comment of (posix as alias)
end tell
