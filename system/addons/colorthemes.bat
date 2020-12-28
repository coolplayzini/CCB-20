@echo off

:main

cls
echo.
echo.
echo.
echo.
echo   [1] Standart
echo   [2] Blau-Schwarz
echo   [3] Blau-Rot
echo   [4] Blau-Weiss
echo   [5] Gruen-Schwarz
echo   [6] Lila-Schwarz
echo   [7] Lila-Gruen
echo   [8] Rot-Schwarz
echo.
echo. 
echo   [x] zurueck
echo.
echo.
echo.
echo.
set /p colorselection=
if %colorselection%==1 goto standart
if %colorselection%==2 goto BlueBlack
if %colorselection%==3 goto BlueRed
if %colorselection%==4 goto BlueWhite
if %colorselection%==5 goto GreenBlack
if %colorselection%==6 goto PurpleBlack
if %colorselection%==7 goto PrupleGreen
if %colorselection%==8 goto RedBlack
if %colorselection%==x goto menue
goto menue

:standart

cd C:\ccb_pro\system\addons\colors
xcopy "CCB Pro 20 standart.bat" "C:\ccb_pro"
cd C:\ccb_pro
"CCB Pro 20 standart.bat"
exit

:BlueBlack

cd C:\ccb_pro\system\addons\colors
xcopy "CCB Pro 20 BlueBlack 9.bat" "C:\ccb_pro"
cd C:\ccb_pro
"CCB Pro 20 BlueBlack 9.bat"
exit

:BlueRed

cd C:\ccb_pro\system\addons\colors
xcopy "CCB Pro 20 BlueRed 4b.bat" "C:\ccb_pro"
cd C:\ccb_pro
"CCB Pro 20 BlueRed 4b.bat"
exit

:BlueWhite

cd C:\ccb_pro\system\addons\colors
xcopy "CCB Pro 20 BlueWhite 79.bat" "C:\ccb_pro"
cd C:\ccb_pro
"CCB Pro 20 BlueWhite 79.bat"
exit 

:GreenBlack

cd C:\ccb_pro\system\addons\colors
xcopy "CCB Pro 20 GreenBlack a.bat" "C:\ccb_pro"
cd C:\ccb_pro
"CCB Pro 20 GreenBlack a.bat"
exit

:PurpleBlack

cd C:\ccb_pro\system\addons\colors
xcopy "CCB Pro 20 PurpleBlack 5.bat" "C:\ccb_pro"
cd C:\ccb_pro
"CCB Pro 20 PurpleBlack 5.bat"
exit

:PurpleGreen

cd C:\ccb_pro\system\addons\colors
xcopy "CCB Pro 20 PurpleGreen a5.bat" "C:\ccb_pro"
cd C:\ccb_pro
"CCB Pro 20 PurpleGreen a5.bat"
exit

:RedBlack

cd C:\ccb_pro\system\addons\colors
xcopy "CCB Pro 20 RedBlack 4.bat" "C:\ccb_pro"
cd C:\ccb_pro
"CCB Pro 20 RedBlack 4.bat"
exit












