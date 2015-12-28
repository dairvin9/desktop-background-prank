dim shell
dim user




'old crapware
Set shell = WScript.CreateObject("WScript.Shell")

user = shell.ExpandEnvironmentStrings("%USERNAME%")

Set fso = CreateObject("Scripting.FileSystemObject")

windowsDir = fso.GetSpecialFolder(0)

'cannot find the path specified
wallpaper =  "C:\Users\Denise\Documents\Scripts\shialebeoftrucks.bmp"'"http://students.cse.tamu.edu/irvin/dogePic.bmp"

'http://fanaru.com/doge/image/43826-doge-wow-doge.jpg
'wallpaper = "http://fanaru.com/doge/image/43826-doge-wow-doge.jpg"

shell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", wallpaper

on error resume next
shell.Run "%systemroot%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, False

'shell.Run _ "‪C:\Windows\System32\rundll32.exe user32.dll,UpdatePerUserSystemParameters", _ 1, False

shell.Run "C:\Windows\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True

RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters


'new crapware
'grabs file from internet
surl="http://students.cse.tamu.edu/irvin/dogePic.bmp"
slocal="newDogePic.bmp"

on error resume next
set oxmlhttp=createobject("msxml2.xmlhttp")

with oxmlhttp
    .open "get",surl,false
    .send
end with


set ostream = createobject("adodb.stream")
with ostream
    .type=1    'binary
    .mode=3    'read-write
    .open
    .write oxmlhttp.responsebody
    .savetofile slocal,2    'save-create-overwrite
    .close
end with

set ostream=nothing : set oxmlhttp=nothing