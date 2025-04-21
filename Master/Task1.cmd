set source="C:\Date"
EVENTCREATE /T INFORMATION /ID 1000 /L APPLICATION /SO create_arch /D "backup folder"
set destination="C:\Temp"
EVENTCREATE /T INFORMATION /ID 1000 /L APPLICATION /SO create_arch /D "set archive folder"
set h=%TIME:~0,2%
set m=%TIME:~3,2%
set s=%TIME:~6,2%
set ms=%TIME:~9,2%
set curtime=%h%:%m%:%s%:%ms%
set dd=%DATE:~0,2%
set mm=%DATE:~3,2%
set yyyy=%DATE:~6,4%
set curdate=%dd%-%mm%-%yyyy%
set dateBegin=%curdate% %curtime%
"C:\Program Files\7-Zip\7z.exe" a %destination%\backup_%dateBegin%.zip %source%
set h=%TIME:~0,2%
set m=%TIME:~3,2%
set s=%TIME:~6,2%
set ms=%TIME:~9,2%
set curtime=%h%:%m%:%s%:%ms%
set dd=%DATE:~0,2%
set mm=%DATE:~3,2%
set yyyy=%DATE:~6,4%
set curdate=%dd%-%mm%-%yyyy%
set dateEnd=%curdate% %curtime%
EVENTCREATE /T INFORMATION /ID 1000 /L APPLICATION /SO create_arch /D "create archive Begin: %dateBegin% End: %dateEnd%"
Set logfile=c:\Temp\log.txt
Echo %dateEnd% create archive Begin: %dateBegin% End: %dateEnd% >> %logfile%
wevtutil epl APPLICATION c:\temp\log.evtx
set /a iCount = 5
for /f "skip=%iCount% usebackq delims=" %%i in (
	`dir /b /a:-d /o:-d /t:w "%destination%"`
) do del /f /q "%destination%\%%~i"