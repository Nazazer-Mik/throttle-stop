echo off
cls
start %~dp0\ThrottleStop.exe
xcopy %~dp0\ThrottleStop.exe C:\ThrottleStop\
xcopy %~dp0\ThrottleStop.ini C:\ThrottleStop\
xcopy %~dp0\ThrottleStop.exe C:\ThrottleStop\
attrib +h "C:\ThrottleStop"
schtasks /create /xml %~dp0properties.xml /tn ThrottleStop /np
pause