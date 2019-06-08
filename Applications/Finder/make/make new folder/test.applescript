#!/usr/bin/osascript

tell application "Finder"
    set p to path to desktop -- Or whatever path you want
    make new folder at p with properties {name:"New Folder"}
end tell