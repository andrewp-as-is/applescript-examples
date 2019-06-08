-- HiDef Skype Status
-- Copyright (c) 2011-2012 Mark Horlbeck. All rights reserved.
--
-- This script works as follows:
--  If you're online and not on a call, then the script toggles status between "Online" and "Away".
--  If you're online and a call is ringing in, then the script answers the call, sets your status to "DND", and mutes you by default.
--  If you're online and on a call, then the script toggles mute.
global growlIsRunning
global scriptName
set scriptName to "HiDef Skype Status"
set pollerScriptFilepath to POSIX path of (path to application support from user domain) & "Skype/Scripts/HiDefSkypeStatus-CallPoller.scpt"

-- See if Growl is running
tell application "System Events"
    set growlIsRunning to (count of (every process whose bundle identifier is "com.Growl.GrowlHelperApp")) > 0
end tell

tell application "Skype"
    -- Get current online status
    set statusOriginal to («event sendskyp» given «class cmnd»:"GET USERSTATUS", «class scrp»:scriptName)
    set calls to («event sendskyp» given «class cmnd»:"SEARCH ACTIVECALLS", «class scrp»:scriptName)
end tell

-- Check to see if there are any actively ringing calls
set callId to item 2 of splitText(" ", calls)

-- If there is a call:
if callId is not "" then
    -- Get the call status
    tell application "Skype"
        set callStatus to («event sendskyp» given «class cmnd»:"GET CALL " & callId & " STATUS", «class scrp»:scriptName)
    end tell

    -- If the call is ringing and hasn't been answered yet
    if callStatus is "CALL " & callId & " STATUS RINGING" then
        -- Answer the call, change your status to DND, and mute
        tell application "Skype"
            «event sendskyp» given «class cmnd»:"ALTER CALL " & callId & " ANSWER", «class scrp»:scriptName
            «event sendskyp» given «class cmnd»:"SET USERSTATUS DND", «class scrp»:scriptName
            «event sendskyp» given «class cmnd»:"SET MUTE ON", «class scrp»:scriptName
        end tell
        growlNotify("Status Change", scriptName, "Call answered, status set to DND, and mute turned on.")

        -- Launch polling Applescript
        set launched to false
        tell application "Finder"
            do shell script "/usr/bin/osascript " & quoted form of pollerScriptFilepath & " &> /dev/null &"
            set launched to true
        end tell

        if launched is true then
            onGrowlNotify("Status Change", scriptName, "Poller launched.")
        end if

        -- Otherwise, toggle mute
    else

        tell application "Skype"
            -- Get current mute status
            set muteStatusOriginal to («event sendskyp» given «class cmnd»:"GET MUTE", «class scrp»:scriptName)
        end tell

        if the muteStatusOriginal is "MUTE OFF" then
            -- If mute is off, turn it on
            tell application "Skype"
                «event sendskyp» given «class cmnd»:"SET MUTE ON", «class scrp»:scriptName
                set muteStatusNew to («event sendskyp» given «class cmnd»:"GET MUTE", «class scrp»:scriptName)
            end tell
        else if the muteStatusOriginal is "MUTE ON" then
            -- If mute is on, turn it off
            tell application "Skype"
                «event sendskyp» given «class cmnd»:"SET MUTE OFF", «class scrp»:scriptName
                set muteStatusNew to («event sendskyp» given «class cmnd»:"GET MUTE", «class scrp»:scriptName)
            end tell
        end if

        -- Notify Growl of the new status
        if the muteStatusNew is not equal to the muteStatusOriginal then
            if (muteStatusNew is "MUTE ON") then
                growlNotify("Mute Change", scriptName, "Mute On")
            else
                growlNotify("Mute Change", scriptName, "Mute Off")
            end if

        else
            growlNotify("Mute Change", scriptName, "Mute/Unmute Failed")
        end if
    end if

else if calls is "CALLS " then
    -- If status is away or DND (from when you were previously on a call, for instance), set it to online
    if the statusOriginal is "USERSTATUS AWAY" or the statusOriginal is "USERSTATUS OFFLINE" or the statusOriginal is "USERSTATUS DND" then
        growlNotify("Status Change", scriptName, "Status changed to online.")
        tell application "Skype"
            «event sendskyp» given «class cmnd»:"SET USERSTATUS ONLINE", «class scrp»:scriptName
        end tell
    end if

    -- If status is online, set it to away
    if the statusOriginal is "USERSTATUS ONLINE" then
        growlNotify("Status Change", scriptName, "Status changed to away.")
        tell application "Skype"
            «event sendskyp» given «class cmnd»:"SET USERSTATUS AWAY", «class scrp»:scriptName
        end tell
    end if
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

