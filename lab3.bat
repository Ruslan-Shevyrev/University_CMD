@echo off
color f0
echo vvedite put' k papke
set /p put=
cd %put%
Echo ������ ������ .txt � .ini � ����� %put%>>c:\spisok.txt
for %%f in (*.txt , *.ini) do echo %%~nf (����%%~xf)>>c:\spisok.txt
pause