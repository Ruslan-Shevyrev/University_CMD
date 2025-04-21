@echo off
color f0
echo vvedite put' k papke
set /p put=
cd %put%
Echo Список файлов .txt и .ini в папке %put%>>c:\spisok.txt
for %%f in (*.txt , *.ini) do echo %%~nf (файл%%~xf)>>c:\spisok.txt
pause