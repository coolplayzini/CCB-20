
:start
@echo off
mkdir C:\ccb_pro\system\addons\notepad

:main
cls
echo.
echo.
echo.
echo   loeschen - l / erstellen - n / bearbeiten - b / oeffnen - o / beenden - x :
echo.
set /p notepad=
if /i %notepad%==n goto new
if /i %notepad%==b goto edit
if /i %notepad%==l goto delete
if /i %notepad%==o goto open
if /i %notepad%==x goto menue

:open

cls
cd C:\ccb_pro\system\addons\notepad
echo.
echo.
echo.
tree /f
echo.
echo.
echo.
set /p open=Welche Datei moechten Sie oeffnen? (Angabe ohne Dateiendung) : 
echo.
cls
type %edit%.txt|more
echo.
pause
goto menue

:new

cd C:\ccb_pro\system\addons\notepad
cls
echo.
echo.
echo.
set /p new=Wie soll ihre Notiz heissen? (Angabe ohne Dateiendung) : 
echo.
echo.
goto write

:write

cls
set /p write=
echo. %write% >>C:\ccb_pro\system\addons\notepad\%new%.txt

:delete

cls
cd C:\ccb_pro\system\addons\notepad
echo.
echo.
echo.
tree /f
echo.
echo.
echo.
set /p delete=Welche Datei moechten Sie loeschen? (Angabe ohne Dateiendung) : 
del %delete%.txt
goto menue



:edit 

cls
cd C:\ccb_pro\system\addons\notepad
echo.
echo.
echo.
tree /f
echo.
echo.
echo.
set /p edit=Welche Datei moechten Sie bearbeiten? (Angabe ohne Dateiendung) : 
cls
echo.
type %edit%.txt|more
echo.
set /p write1=
echo. %write1% >>C:\ccb_pro\system\addons\notepad\%edit%.txt
goto menue 






