-- Currently not running. 
-- Denise Irvin, 12/9/15
-- change desktop background on Mac
-- for block comments, (* *)

-- The doge picture is found here:
-- "http://fanaru.com/doge/image/43826-doge-wow-doge.jpg"

-- modelled after 
-- http://www.macosxautomation.com/applescript/features/system-prefs.html

-- downloads the picture from the internet
tell application "URL Access Scripting"
  download "http://fanaru.com/doge/image/43826-doge-wow-doge.jpg" to file "dogePic.jpg" 
end tell

-- changes the screensaver 
-- not sure if it will let me make it doge
tell application "System Events"
 tell current desktop
 set picture rotation to 0 -- (0=off, 1=interval, 2=login, 3=sleep)
 set picture to file "dogePic.jpg" -- will it let me grab pic directly from internet?
 end tell
end tell

-- not sure if necesary, but launches screensaver
try
 tell application id "com.apple.ScreenSaver.Engine" to launch
end try