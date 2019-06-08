#!/usr/bin/osascript

tell application "VLC"
	--set audio volume to 9999
	--return audio volume
    --set volume output volume 100
    output volume of (get volume settings)
end tell
