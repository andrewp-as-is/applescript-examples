#!/usr/bin.osascript

tell application "Google Chrome"                   
	repeat with w in  every window   
		repeat with t in every tab in w       
	    	if "vk.com" is in (get URL of t) then
	    		set js to "//Set up jQuery
var script = document.createElement('script');
script.src = 'https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js';
document.getElementsByTagName('head')[0].appendChild(script);
$('#ac_play.playing').click();
"
	    		tell t
	    			execute javascript(js)
	    		end tell
	    	end if
	  	end repeat
	end repeat
end tell

