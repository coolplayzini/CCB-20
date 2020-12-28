
:boot

@echo off
set version=2000
set starttime=%time%
set startdate=%date%
cls
if not exist C:\ccb_pro\system\ echo installing ... && timeout /t 5
mode con lines=30 cols=120
mkdir C:\ccb_pro\system\update
ATTRIB +H "C:\ccb_pro\system\update"
mkdir C:\ccb_pro\system\otp
ATTRIB +H "C:\ccb_pro\system\otp"
mkdir C:\ccb_pro\system\fuc
mkdir C:\ccb_pro\system\addons
ATTRIB +H "C:\ccb_pro\system\addons"
ATTRIB +H "C:\ccb_pro\system\fuc"
mkdir C:\ccb_pro\system\Admin-User
ATTRIB +H "C:\ccb_pro\system\Admin-User"
mkdir C:\ccb_pro\system\Users
ATTRIB +H "C:\ccb_pro\system\Users"
mkdir C:\ccb_pro\system\Music
mkdir C:\ccb_pro\system\chat
ATTRIB +H "C:\ccb_pro\system\chat"
echo >>C:\ccb_pro\system\chat\chat.bat
echo >>C:\ccb_pro\system\chat\verlauf.bat
if not exist C:\ccb_pro goto start_error
cd Ct:\ccb_pro\system\fuc
set str=filename.txt
echo.%str%
set str=%str:~0,-4%
echo.%str%
cls:color_checkif exist "C:\ccb_pro\CCB Pro 20 standart.bat" del "C:\ccb_pro\CCB Pro 20.bat" && ren "C:\ccb_pro\system\addons\colors\CCB Pro 20 standart.bat" "CCB Pro 20.bat"if exist "C:\ccb_pro\CCB Pro 20 BlueBlack 9.bat" del "C:\ccb_pro\CCB Pro 20.bat" && ren "C:\ccb_pro\system\addons\colors\CCB Pro 20 BlueBlack 9.bat" "CCB Pro 20.bat"if exist "C:\ccb_pro\CCB Pro 20 BlueRed 4b.bat" del "C:\ccb_pro\CCB Pro 20.bat" && ren "C:\ccb_pro\system\addons\colors\CCB Pro 20 BlueRed 4b.bat" "CCB Pro 20.bat"if exist "C:\ccb_pro\CCB Pro 20 BlueWhite 79.bat" del "C:\ccb_pro\CCB Pro 20.bat" && ren "C:\ccb_pro\system\addons\colors\CCB Pro 20 BlueWhite 79.bat" "CCB Pro 20.bat"if exist "C:\ccb_pro\CCB Pro 20 GreenBlack a.bat" del "C:\ccb_pro\CCB Pro 20.bat" && ren "C:\ccb_pro\system\addons\colors\CCB Pro 20 GreenBlack a.bat" "CCB Pro 20.bat"if exist "C:\ccb_pro\CCB Pro 20 PurpleBlack 5.bat" del "C:\ccb_pro\CCB Pro 20.bat" && ren "C:\ccb_pro\system\addons\colors\CCB Pro 20 PurpleBlack 5.bat.bat" "CCB Pro 20.bat"if exist "C:\ccb_pro\CCB Pro 20 PurpleGreen a5.bat" del "C:\ccb_pro\CCB Pro 20.bat" && ren "C:\ccb_pro\system\addons\colors\CCB Pro 20 PurpleGreen a5.bat" "CCB Pro 20.bat"if exist "C:\ccb_pro\CCB Pro 20 RedBlack 4.bat" del "C:\ccb_pro\CCB Pro 20.bat" && ren "C:\ccb_pro\system\addons\colors\CCB Pro 20 RedBlack 4.bat" "CCB Pro 20.bat"
:start

color a
title ccb
cls
echo.
echo.
echo.
echo                                                 ######################
echo                                                 #                    #
echo                                                 #  [1] Anmelden      #
echo                                                 #  [2] Registrieren  #
echo                                                 #  [x] Beenden       #
echo                                                 #                    #
echo                                                 ######################
echo.
echo.
echo.
echo ------------------------------------------------------------------------------------------------------------------------
echo.
set /p batch=
if %batch%==1 goto login
if %batch%==2 goto register
if %batch%==3 goto start
if %batch%==x exit

:menue

title                                                             Menue von %un%
color a
cls
echo.
echo.
echo.
echo.
echo.
echo                            -----------------                       ------------------------        
echo                             [1] Dateien                             [5] Virenscanner         
echo                             [2] Addons                              [6] Systembereinigung    
echo                             [3] Info                                [7] Ping-Test
echo                             [4] Store                               [8] Taskkill            
echo                            -----------------                       ------------------------ 
echo.
echo.
echo.
echo.
echo.
echo.
echo   ----------------------                                                                       ----------------
echo   [x] Beenden                                 _______                                            User:         
echo   [z] Benutzer wechseln                      /       \                                           %un%          
echo   [r] Reload                                /         \                ___
echo   [e] Einstellungen                        /           \______________/   \
echo   [a] Admin                               /                 /       \      \                     Serverstatus:
echo   ----------------------                 /                 /         \      \                    GETRENNT                      
echo                                          ------------------------------------
echo.         
echo                                                                                                  Datum:   
echo                                                                                                  %date%
echo                                                                                                ----------------
echo.
echo.
set /p menue=
if %menue%==1 goto data
if %menue%==2 goto addons
if %menue%==3 goto info
if %menue%==e goto settings
if %menue%==x goto question_exist
if %menue%==z goto Start 
if %menue%==4 goto addons
if %menue%==r goto reload
if %menue%==a goto admin
if %menue%==5 goto virusscan
if %menue%==6 goto systemclear
if %menue%==7 goto ping
if %menue%==8 goto taskkill
goto menue

:data

title Dateien
cls
cd C:\ccb_pro\system\Users\%un%\EigeneDateien
tree /f
echo.
echo.
echo.
echo.
echo   [1] Dokumente
echo   [2] system
echo   [x] Zurueck
set /p data=
if %data%==1 goto dokus
if %data%==2 goto sys
if %data%==x goto menue
goto menue

:info 

title Systeminformationen
color a
cls
echo.
echo.
echo.
echo       Version:
echo.
echo       Win-CCB Professional 19
echo.
echo.
echo       Nutzername:
echo.
echo       %un%
echo.
echo.
echo       Passwort:
echo.
echo       %p%
echo.
echo.
echo       Bedeutung von J/N/X:
echo.
echo       J= Ja
echo       N= Nein
echo       X= Zurueck/Beenden
echo.
echo.
echo.
echo.
pause
goto menue

:programs

title Programme
color a
cls
echo.
echo.
echo.
echo. 
echo        ---------------------
echo        [1] Rechner
echo        [2] Musik
echo        [3] Website aufrufen
echo        [4] Notepad
echo        [5] Programm starten
echo        ---------------------
echo.
echo.
echo.
echo        [x] Zurueck
set /p programs=
if %programs%==1 goto rechner
if %programs%==2 goto music
if %programs%==3 goto website
if %programs%==4 goto notepad
if %programs%==5 goto pro-start
if %programs%==x goto menue 
goto  menue

:login

title Anmelden
cls
set /p un=Nutzername eingeben:
if not exist C:\ccb_pro\system\Users\%un% goto login_fehler_user
set /p p=Passwort eingeben:
if not exist C:\ccb_pro\system\Users\%un%\%p%.txt goto login_fehler_pass
if exist "C:\ccb_pro\system\Users\%un%\ADMIN_1.txt" xcopy "C:\ccb_pro\system\Users\%un%\%un%.txt" "C:\ccb_pro\system\Admin-User"
if exist "C:\ccb_pro\system\Users\%un%\ADMIN_1.txt" del "C:\ccb_pro\system\Users\%un%\ADMIN_1.txt"
if not exist "C:\ccb_pro\system\Users\%un%\ADMIN_1.txt" goto menue

cls
goto menue


:register

title Registrieren
cls
set /p nn=Nutzername eingeben:
if exist C:\ccb_pro\system\Users\%nn% goto registrier_fehler
mkdir C:\ccb_pro\system\Users\%nn%
mkdir C:\ccb_pro\system\Users\%nn%\Console
mkdir C:\ccb_pro\system\Users\%nn%\EigeneDateien
mkdir C:\ccb_pro\system\Users\%nn%\EigeneDateien\system
mkdir C:\ccb_pro\system\Users\%nn%\EigeneDateien\Dokumente
set /p np=Passwort eingeben:
echo. >>C:\ccb_pro\system\Users\%nn%\%np%.txt
echo. >>C:\ccb_pro\system\Users\%nn%\%nn%.txt
if not exist C:\ccb_pro\system\fuc\*.txt echo >>C:\ccb_pro\system\fuc\%nn%.txt 
if exist C:\ccb_pro\system\fuc\*.txt echo. >>C:\ccb_pro\system\Admin-User\%nn%.txt
goto start

:login_fehler_user

cls
echo.
echo.
echo       Dieser Nutzername ist falsch geschrieben oder existiert nicht!
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto start

:login_fehler_pass

cls
echo.
echo.
echo        Das Passwort ist falsch!
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto start

:registrier_fehler

cls
echo.
echo.
echo   Dieser Nutzername ist bereits vergeben!
echo   Bitte waehle einen anderen Nutzernamen.
echo.
echo.
echo.
echo.
pause
goto start

:admin

title Adminbereich
cls
if not exist C:\ccb_pro\system\Admin-User\%un%.txt goto admin_fehler
echo.
echo   --------------
echo   [1] System
echo   [2] Konsole
echo   [3] Adminuser
echo   --------------
echo.
echo.
echo.
echo   [x] Zurueck
echo.
echo   [r] Programm Resetten
set /p admin=
if %admin%==3 goto adminuser
if %admin%==1 goto sys_admin
if %admin%==x goto menue
if %admin%==2 goto console
if %admin%==r goto full_reset_ask
if %admin%==4 goto empty
if %admin%==5564 goto developer-mode
goto menue

:admin_fehler

cls
echo.
echo Du hast nicht die benoetigte Berechtigung dafuer!
pause.
goto menue

:pass

title Passwort aendern
cls
set /p pss=Neues Passwort:
ren C:\ccb_pro\system\Users\%un%\%p%.txt %pss%.txt
goto pass_1

:pass_1

cls
echo.
echo.
echo   Dein Passwort ist jetzt %pss%
echo.
echo.
echo.
pause
goto menue

:rechner

title Rechner
color a
cls
echo.
echo.
echo.
echo Willkommen im Taschenrechner!
echo Verwenden sie folgende Zeich um zu rechnen: + * - /
echo.
echo.
set /p X=
set /A L=%X%
echo.
echo Ergebnis: %L%
echo.
echo.
echo   [1] Nochmal
echo   [x] zurueck
set /p no=
if %no%==1 goto rechner
if %no%==x goto programs
goto menue

:music

title Musik
color e
cls
echo.
echo ------------------------------MUSIKTITEL------------------------------
echo.
cd C:\ccb_pro\system\Music
dir /B /ON
echo.
echo.
echo.
set /p mtsu=Musiktitel Suchen? [J/N/X]:
echo  [x] Zureuck
if /i %mtsu%==j goto music_search
if /i %mtsu%==n goto music_nosearch
if /i %mtsu%==x goto menue
goto menue

:music_search

echo.
title Titel suchen
color e
cls
echo.
echo.
echo.
set /p mts=Musiktitel suchen :
echo.
echo ------------------------------------------------------------------------------------------------------------------------
echo. 
dir /B /ON *%mts%*
echo.
echo.
echo ------------------------------------------------------------------------------------------------------------------------
echo.
echo.
echo.
set /p mtda=Musiktitel der abgespielt werden soll:
if not exist "C:\ccb_pro\system\Music\%mtda%" goto music_fehler
start "Windows Media Player.exe" "C:\ccb_pro\system\Music\%mtda%"
goto music

:music_nosearch

title Musik
color e
cls
echo.
echo.
echo ------------------------------MUSIKTITEL------------------------------
echo.
cd C:\ccb_pro\system\Music
dir /B /ON
echo.
echo.
echo.
set /p mt=Musiktitel auswaehlen:
if not exist "C:\ccb_pro\system\Music\%mt%" goto music_fehler
start "Windows Media Player.exe" "C:\ccb_pro\system\Music\%mt%"
goto music


:music_fehler

color e
cls
echo.
echo.
echo   Der gesuchte Musiktitel existiert nicht!
echo.
echo.
echo.
echo.
echo.
pause
goto music

:dokus

title Dokumente
cls
echo.
echo.
cd C:\ccb_pro\system\Users\%un%\EigeneDateien\Dokumente
tree /f
echo.
echo.
echo.
echo.
set /p dele=Datei loeschen:
del "C:\ccb_pro\system\Users\%un%\EigeneDateien\Dokumente\%dele%\"
echo.
echo.
echo.
pause
goto data

:sys

title SystemOrdner
cls
echo.
echo.
cd C:\ccb_pro\system\Users\%un%\EigeneDateien\system
tree /f
echo.
echo.
echo.
echo.
set /p del=Datei loeschen:
del "C:\ccb_pro\system\Users\%un%\EigeneDateien\system\%del%"
echo.
echo.
echo.
pause
goto data

:sys_admin

title SystemOrdner
cls
echo.
echo.
cd C:\ccb_pro\system\Users\%un%\EigeneDateien\system
tree /f
echo.
echo.
echo.
echo.
set /p del=Datei loeschen:
del "C:\ccb_pro\system\Users\%un%\EigeneDateien\system\%del%"
echo.
echo.
echo.
pause
goto admin

:users

cd "C:\ccb_pro\system\Users"
tree /f
echo.
echo.
echo.
echo.
echo.
echo.
set /p deluser=Benutzer loeschen:
del "C:\ccb_pro\system\Users\%deluser%"
goto admin

:reload

cls
timeout /t 3
goto menue

:start_error

cls
echo.
echo.
echo.
echo   Not possible to start:
echo.
echo   Zum starten des Programmes wird eine Festplatte mit dem Verzeichnis C:\ benoetigt
echo. 
echo.
echo.
echo.
echo.
echo.
pause
exit

:list

cls
cd D:\Backup_CCB
tree /f
echo.
echo.
echo.
echo.
set /p list_ask=Backup loeschen (J/N)?:
if /i %list_ask%==j goto list_delete
if /i %list_ask%==n goto menue
goto menue

:list_delete

cls
cd C:\Backup_CCB
tree /f
echo.
echo.
echo.
echo.
set /p list_delete=Backup loeschen:
del "D:\Backup_CCB\%list_delete%"
goto menue

:console

cd "C:\ccb_pro\system\users\%un%"
echo.
echo.
echo.
echo.
echo   !ACHTUNG!
echo    Um den Konsolenmodus zu verlassen muss das geoeffnete Fenster geschlossen werden!
timeout /t 10
cls
start cmd
goto admin

:question_exist

cls
cd C:\ccb_pro\logged
echo.
echo.
echo.
echo.
echo   Moechten sie das Programm verlassen?
echo.
echo.
echo.
echo.
echo.
set /p exit=Verlasssen?  [J/N]:
if /i %exit%==j goto exit_l
if /i %exit%==n goto menue
goto menue

:adminuser

cls
cd C:\ccb_pro\system\Admin-User
tree /f
echo.
echo.
echo.
echo.
echo.
echo.
set /p auask=Admin [(H)Hinzufuegen /(L)Loeschen / X] :
if /i %auask%==h goto admin_add
if /i %auask%==l goto del_admin
if /i %auask%==x goto admin
goto menue

:admin_add

cls
cd C:\ccb_pro\system\Users
tree /f
echo.
echo.
echo.
echo.
echo.
echo.
set /p auadd=Admin Hinzufuegen :
echo. >>C:\ccb_pro\system\Admin-User\%auadd%.txt
goto admin

:del_admin

cls
cd C:\ccb_pro\system\Admin-User
tree /f
echo.
echo.
echo.
echo.
echo.
echo.
set /p audel=Admin loeschen :
del C:\ccb_pro\system\Admin-User\%audel%.txt
goto admin

:full_reset_ask

cls
echo.
echo.
echo.
echo   Moechten sie das Programm wirklich komplett
echo   resetten, dabei gehen bis auf die Benutzer alle Datein Verloren!
echo.
echo.
echo.
echo.
set /p full_ask=Fullreset ausfuehren? [J/N] :
if /i %full_ask%==j goto full_reset
if /i %full_ask%==n goto admin
goto menue

:full_reset

cls
echo.
echo.
echo.
echo   System wird resettet!
echo.
echo.
echo.
echo.
echo.
echo.
echo.
del /s /q /f C:\ccb_pro\system\Admin-User\*
del /s /q /f C:\ccb_pro\system\Music\*
cd C:\ccb_pro\system
rd Admin-User
rd Music
timeout /t 10 /NOBREAK
exit

:move_program_ask

cls
echo.
echo.
echo   Moechten sie das Programm wirklich
echo   in einen anderen ordner verschieben?
echo.
echo.
echo.
echo.
echo.
echo.
set /p move_ask=Programm verschieben? [J/N] :
if /i %move_ask%==j goto move_program
if /i %move_ask%==n goto admin

:move_program

cls
echo.
echo   Nach der Verschiebung bitte das Programm unter dem nuen Pfad
echo   ordnungsgemaeß nach Videoanleitung neu installieren.
echo.
echo   [Alle vorherigen Datein bis auf die Nutzer werden beibehalten!]
echo.
echo.
set /p move=Wohin soll ihr programm Verschoben werden [Pfad] :
mkdir "%move%\ccb_pro\system\Users"
mkdir "%move%\ccb_pro\system\Music"
mkdir "%move%\ccb_pro\system\Admin-User"
xcopy "C:\ccb_pro\system\ccb_pro.bat" "%move%\ccb_pro\system"
xcopy "C:\ccb_pro\system\Music" "%move%\ccb_pro"
timeout /t 10 /NOBREAK
exit

:txt.color

cls
echo.
echo.
echo.
echo   [1] Menue
echo   [2] Login
echo   [3] Programme
echo   [4] Info
echo.
echo.
echo.
echo.
echo.
set /p colorslot=Farbe aendern von : 
if %colorslot%==1 goto color.menu
if %colorslot%==2 goto color.start
if %colorslot%==3 goto color.program
if %colorslot%==4 goto color.info

:color.menu

cls
echo.
echo.
echo.
echo     [1] Blau
echo     [2] Gruen
echo     [3] Tuerkis
echo     [4] Rot
echo     [5] Lila
echo     [6] Gelb
echo     [7] Hellgrau
echo     [8] Grau
echo     [9] Hellblau
echo.
echo.
echo.
echo.
set /p color=Farbe : 
color %color% menue
goto menue

:color.start

cls
echo.
echo.
echo.
echo     [1] Blau
echo     [2] Gruen
echo     [3] Tuerkis
echo     [4] Rot
echo     [5] Lila
echo     [6] Gelb
echo     [7] Hellgrau
echo     [8] Grau
echo     [9] Hellblau
echo.
echo.
echo.
echo.
set /p color=Farbe : 
color %color% start
goto menue

:color.program

cls
echo.
echo.
echo.
echo     [1] Blau
echo     [2] Gruen
echo     [3] Tuerkis
echo     [4] Rot
echo     [5] Lila
echo     [6] Gelb
echo     [7] Hellgrau
echo     [8] Grau
echo     [9] Hellblau
echo.
echo.
echo.
echo.
set /p color=Farbe : 
color %color% programs
goto menue

:color.info

cls
echo.
echo.
echo.
echo     [1] Blau
echo     [2] Gruen
echo     [3] Tuerkis
echo     [4] Rot
echo     [5] Lila
echo     [6] Gelb
echo     [7] Hellgrau
echo     [8] Grau
echo     [9] Hellblau
echo.
echo.
echo.
echo.
set /p color=Farbe : 
color %color% info
goto menue

:website

cls
echo.
echo.
echo -----------[Website aufrufen]-----------
echo.
echo.
set /p web= Website aufrufen :
echo.
echo.
set /p webending= Domain Endung (Bsp. de;com;org) :  
start http://%web%.%webending%/
goto menue

:chat

Cls
echo MESSENGER
set /p n=User:
set /p m=Message:
net send %n% %m%
Pause
Goto chat

:settings

cls
color a
echo.
echo.
echo   [1] Nutzername
echo.
echo   [2] Passwort
echo.
echo   [3] Fenstergroesse
echo.
echo   [4] Server
echo.
echo   [5] Support
echo.
echo   [6] System-Backup
echo.
echo   [7] Update
echo.
echo.
echo   [x] zurueck
echo.
echo.
echo.
set /p settings=
if %settings%==1 goto username
if %settings%==2 goto password
if %settings%==3 goto window
if %settings%==4 goto server
if %settings%==5 goto support
if %settings%==6 goto backup
if %settings%==7 goto update
if /i %settings%==x goto menue
goto menue

:username

cls
echo.
echo.
echo   Aktuell: %un%
echo.
echo.
echo   [1] aendern
echo   [x] zurueck
echo.
echo.
echo.
set /p unaendern=
if %unaendern%==1 goto unren
if %unaendern%==x goto settings
goto menue

:unren

cls
echo.
echo.
set /p unren=Neuer Nutzername : 
ren "C:\ccb_pro\system\Admin-User\%un%.txt" "%unren%.txt"
ren "C:\ccb_pro\system\Users\%un%" "%unren%"
goto menue

:password

cls
echo.
echo.
echo   Aktuell: %p%
echo.
echo.
echo   [1] aendern
echo   [x] zurueck
echo.
echo.
echo.
set /p renrenpasser=
if %renrenpasser%==1 goto renrenpass
if /i %renrenpasser%==x goto settings
goto menue

:renrenpass

cls
echo.
echo.
set /p renrenpass=Neues Passwort : 
ren "C:\ccb_pro\system\Users\%un%\%p%.txt" "%renrenpass%.txt"
exit

:window

cls
echo.
echo.
echo   [1] zuruecksetzen
echo   [x] zurueck
echo.
echo.
echo.
set /p window=
if %window%==1 goto rewindow
if /i %window%==x goto settings
goto menue

:rewindow

cls
mode con lines=30 cols=120
goto settings

:server

cls
echo.
echo.
echo   Aktuell: Kein Server vorhanden
echo.
echo.
echo   [x] zurueck
echo.
echo.
echo.
set /p serverst=  
if /i %serverst%==x goto settings
goto menue

:pro-start

cls
echo.
echo.
echo ------------------------------------------------------------------------------------------------------------------------
echo.
echo.
set /p pro-start=  Welches Programm soll gestartet werden? :
echo.
echo.
echo ------------------------------------------------------------------------------------------------------------------------
start %pro-start%
goto menue

:message

echo.
echo.
echo.
echo   Das Programm ist entweder noch in einem anderem Fenster geoffnet oder das 
echo   vorherige Fenster wurde nicht ordnungsgemaess
echo   geschlossen! Bitte schliessen sie das bereits geoeffnete Fenseter oder loeschen sie die "logged.txt"
echo   Datei unter C:\ccb_pro\logged
echo.
echo.
echo.
set /p logged=Den Pfad oeffnen? [J/N] :
if /i %logged%==j start C:\ccb_pro\logged
if /i %logged%==n exit
goto menue
exit 

:exit_l

exit

:support

cls
echo.
echo.
echo.
echo   Schreibe eine E-Mail an coolplayzini@outlook.de oder besuche
echo   uns auf Discord unter https://discord.gg/rDUJyX
echo.
echo.
echo.
echo   [x] zurueck
echo.
echo.
set /p support=
if /i %support%==x goto settings
goto menue

:serverst

cls

:addons

cd C:\cc_pro\system\addons\
cls
echo.
echo.
echo.
echo.
echo.
echo   [1] Notepad
echo   [2] Color Themes
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p addons=Welches addon moechten Sie starten? : 
if %addons%==1 goto notepad
if %addons%==2 goto color_themes
goto menue

:virusscan

:systemclear

:taskkill

cls
echo.
echo.
echo.
echo.
echo.
echo.
set /p taskkill=   Welchen Task moechten Sie beenden? : 
taskkill -IM %taskkill%.exe
goto menue

:PLATZHALTER

cls
echo.
echo.
echo.
echo.
echo Das ist nur ein Platzhalter für nicht belegte Auswahl-Slots!
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto menue

:ping

cls
echo.
echo.
echo.
echo.
echo.
set /p ping= Ping ausfuehren fuer [Ping / Domain] : 
cls
ping %ping%
echo.
echo.
echo.
pause
goto menue

:developer-mode

cls
echo.
echo.
title CCB Dev-mode
echo.
echo.
echo                    --------------------------
echo                     [1] test
echo                     [2] install dev version
echo                     [3] PLATZHALTER
echo                    --------------------------
echo.
echo.
echo.
echo      [x] Back to normal mode
echo.
echo.
echo.
set /p dev=
if %dev%==x goto menue
if %dev%==1 goto test
if %dev%==2 goto PLATZHALTER
if %dev%==3 goto PLATZHALTER
goto menue

:test

cls
echo.
echo.
goto search_for_updates





# Für Addons : 
# listet alle installierten addons auf
# wird ein addon gestartet wird die addon-batchdatei called ist das addon beendet :
# goto menue




:backup

cls
echo.
echo.
echo.
echo.
echo.
echo.
set /p backupa=Moechten Sie ein System-Backup erstellen? [J/N] :
if  /i %backupa%==j goto backupj
if  /i %backupa%==n goto menue
goto menue

:backupj

cls
echo.
echo.
echo.
echo.
set /p backupw=Wo soll ihr Backup gespeichert werden? (Pfad angeben) : 
echo.
mkdir "%backupw%\ccb_pro\ccb_backup_%date%"
xcopy "C:\ccb_pro" "%backupw%\ccb_pro\ccb_backup_%date%" /W /E /Y /H /A
goto menue

:update

cls
echo.
echo.
echo.
echo   Aktuelle Version :
echo   %version%
echo.
echo.
echo   Zuletzt geprueft :
echo   Datum: %startdate%   Zeit: %starttime%
echo.
echo.
echo.
set /p update=Moechten Sie nach Updates suchen? [J/N] : 
if /i %update%==j goto search_for_updates 
if /i %update%==n goto menue
goto menue

:search_for_updates

cls
cd C:\ccb_pro\system\update
echo.
echo.
echo.
echo.
# Hier wird die Update-Abfrage stattfinden
#
#
#
echo.
echo.
echo.
echo.
set /p updateask=Möchten Sie das Update installieren? [J/N] : 
echo.
echo.
echo.
echo.
if /i %updateask%==j goto installupdate
if /i %updateask%==n goto menue
goto menue

:installupdate

cls
cd C:\ccb_pro\system\update
echo   Starte FTP-Transfer
ftp /s:downloader.ftp
echo   fertig
cd C:\ccb_pro\system\update
xcopy ccb_pro_update.bat C:\ccb_pro\
start C:\ccb_pro\system\update\update_starter.bat
cls
exit

:notepad

if not exist C:\ccb_pro\system\addons\notepad.bat goto notepad_install
call C:\ccb_pro\system\addons\notepad.bat
goto menue

:color_themes

if not exist C:\ccb_pro\system\addons\Color_Themes.bat goto color_themes_install
call C:\ccb_pro\system\addons\Color_Themes.bat
goto menue

:color_themes_install

cls
cd C:\ccb_pro\system\addons
echo.
echo.
echo.
echo.
set /p color_themes_install=Moechten Sie dieses addon installieren? [J/N] : 
if /i %color_themes_install%==n goto menue
cd C:\ccb_pro\system\addons\
echo   Starte FTP-Transfer
ftp /s:installer_color_themes.ftp
echo   fertig
goto menue

:notepad_install

cls
cd C:\ccb_pro\system\addons
echo.
echo.
echo.
echo.
set /p notepad_install=Moechten Sie dieses addon installieren? [J/N] : 
if /i %notepad_install%==n goto menue
cd C:\ccb_pro\system\addons\
echo   Starte FTP-Transfer
ftp /s:installer_notepad.ftp
echo   fertig
goto menue





















































 




























