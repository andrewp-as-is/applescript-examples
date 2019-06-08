tell application "iTerm"
    make new terminal
    tell the current terminal
        activate current session
        launch session "Default Session"
        tell the last session
            write text "cd ~/Downloads; clear; pwd"
        end tell
    end tell
end tell