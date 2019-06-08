#!/usr/bin/osascript

tell application "Finder" to exists POSIX file "/usr/local/bin/wget"

tell application "Finder" to set installed to exists POSIX file "/usr/local/bin/wget"