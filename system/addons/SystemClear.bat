@echo off
mode con lines=30 cols=96
title Silent System Clear
color 3

:start

cls
echo.
echo.
echo.
echo ________________________________________________________________________________________________
echo.
echo                       Do you really want to clear your computer [Y/N]? 
echo.
echo                            (Type "YA" to ask before each step)
echo.
echo                          ! USED FILES/FOLDERS WON'T BE DELETED !
echo.
echo ________________________________________________________________________________________________
echo.
echo.
set /p start=~ 
if /i %start%==n exit
if /i %start%==y goto delall
if /i %start%==ya goto temp
goto start
 
:temp

cls
echo.
echo.
echo.
echo ________________________________________________________________________________________________
echo.
echo        Do you really want to delete all the temporal data from your computer? [Y/N]?
echo.
echo      (This will only delete unneccassery data ! USED FILES/FOLDERS WON'T BE DELETED !)
echo.
echo ________________________________________________________________________________________________
echo.
echo.
set /p deltemp=~ 
if /i %deltemp%==n goto cookies
if /i %deltemp%==y del /f /s /q %SystemDrive%\Users\%username%\AppData\Local\Temp\* && goto cookies
goto temp

:cookies

cls
echo.
echo.
echo.
echo ________________________________________________________________________________________________
echo.
echo                        Do you really want to delete all cookies [Y/N]?
echo.
echo                               (This will  delete all cookies)
echo.
echo ________________________________________________________________________________________________
echo.
echo.
set /p delcookies=~ 
if /i %delcookies%==y cd %USERPROFILE%\cookies && del /S /Q . && pause
if /i %delcookies%==n goto
goto cookies

:bin

cls
echo.
echo.
echo.
echo ________________________________________________________________________________________________
echo.
echo                   Do you really want to delete all the data from bin? [Y/N]?
echo.
echo                          (This will delete the data from your bin)
echo.
echo ________________________________________________________________________________________________
echo.
echo.
set /p delbin=~ 
if /i %delbin%==n goto
if /i %delbin%==y del %SystemDrive%\$RECYCLE.BIN && pause
goto bin
