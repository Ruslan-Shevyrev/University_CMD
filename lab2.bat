@echo off
color f0
if exist c:\0001 goto end
md c:\0001
echo write file name
Set /P name=
echo  off>>c:\0001\%name%.txt
echo write file title
Set /p title=
echo %title%>>c:\0001\%name%.txt
echo Versia os>>c:\0001\%name%.txt
ver>>c:\0001\%name%.txt
echo date>>c:\0001\%name%.txt
date /t >>c:\0001\%name%.txt
echo time>>c:\0001\%name%.txt
time /t >>c:\0001\%name%.txt
vol c:>>c:\0001\%name%.txt
echo vvedite put' k failu
set /p put=
type %put%>>c:\0001\%name%.txt
type c:\0001\%name%.txt | more
goto veryend
:end
echo the dir 0001 is alredy exists
:veryend
echo !!!!!!!!!!
pause