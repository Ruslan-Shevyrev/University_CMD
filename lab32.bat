color f0
echo vvedite put' k papke
set /p put=
cd %put%
Echo ������ ������ .txt � .ini � ����� %put%>>c:\spisok.txt
for %%f in (*.*) do if %%~xf==.txt ( echo %%~nf {����.txt} >>c:\spisok.txt ) else if %%~xf==.ini echo %%~nf {����.ini} >>c:\spisok.txt
pause