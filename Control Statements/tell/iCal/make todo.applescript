#!/usr/loca/bin/osascript
tell application "iCal" to delete (every todo of (every calendar) whose completion date < (current date))