global growlIsRunning
global scriptName
set scriptName to "HiDef Skype Status"

-- See if Growl is running
tell application "System Events"
    set growlIsRunning to (count of (every process whose bundle identifier is "com.Growl.GrowlHelperApp")) > 0
end tell

tell application "Skype"
    set calls to («event sendskyp» given «class cmnd»:"SEARCH ACTIVECALLS", «class scrp»:scriptName)
end tell

-- Check to see if there are any active calls
set callId to item 2 of splitText(" ", calls)
if callId is not "" then
    tell application "Skype"
        -- Get the call status
        set originalCallStatus to («event sendskyp» given «class cmnd»:"GET CALL " & callId & " STATUS", «class scrp»:scriptName)

        if originalCallStatus is "CALL " & callId & " STATUS INPROGRESS" then
            repeat until originalCallStatus is "CALL " & callId & " STATUS FINISHED"
                delay 1
                set originalCallStatus to («event sendskyp» given «class cmnd»:"GET CALL " & callId & " STATUS", «class scrp»:scriptName)
            end repeat

            «event sendskyp» given «class cmnd»:"SET USERSTATUS ONLINE", «class scrp»:scriptName
            growlNotify("Status Change", scriptName, "Status changed back to online.")
        end if
    end tell
end if

if growlIsRunning then
    tell application id "com.Growl.GrowlHelperApp"
        -- Make a list of all notification types that this script will ever send
        set the allNotificationsList to {"Status Change", "Mute Change"}

        -- Make a list of notifications that will be enabled by default
        set the enabledNotificationsList to {"Status Change", "Mute Change"}

        -- Register our script with Growl
        register as application scriptName all notifications allNotificationsList default notifications enabledNotificationsList icon of application "Skype.app"
    end tell
end if

on growlNotify(growlType, growlTitle, growlDescription)
    if growlIsRunning then
        tell application id "com.Growl.GrowlHelperApp"
            notify with name growlType title growlTitle description growlDescription application name scriptName
        end tell
    end if
end growlNotify

on splitText(delimiter, someText)
    set prevTIDs to AppleScript's text item delimiters
    set AppleScript's text item delimiters to delimiter
    set output to text items of someText
    set AppleScript's text item delimiters to prevTIDs
    return output
end splitText
