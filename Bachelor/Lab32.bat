color f0
echo vvedite put' k papke
set /p put=
cd %put%
Echo Список файлов .txt и .ini в папке %put%>>c:\spisok.txt
for %%f in (*.*) do if %%~xf==.txt ( echo %%~nf {файл.txt} >>c:\spisok.txt ) else if %%~xf==.ini echo %%~nf {файл.ini} >>c:\spisok.txt
pause