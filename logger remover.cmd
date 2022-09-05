rem Logger remover 
rem email: syntheticcs@fbi.ac
cls
title Info Logger Remover
@echo off
color C
echo Delete discord as a whole delete all files 
echo.
echo  Windows + R , then type %appdata% and click OK. In the AppData Roaming folder, right-click on the Discord folder, then select Delete.
echo.
echo Disable Discord auto-run
echo If you cannot uninstall Discord from Windows 10, right-click on the taskbar and choose Task Manager.
echo From Task Manager, go to the Startup tab.
echo.
echo  Windows + I, then navigate to Apps.
echo Check if you can find Discord in this list.
echo If yes, click on it and select Uninstall.
echo.
echo Use the following keyboard shortcut: Windows + R, then type %appdata% and click OK.
echo In the AppData Roaming folder, right-click on the Discord folder, then select Delete.
echo.
echo Open the Run dialog box again, using the Windows + R keys.
echo Now, type %LocalAppData% and hit the Enter key.
echo Locate the Discord folder, then right-click on it, and select Delete
echo.
echo Hit the Windows key, type regedit, then open Registry Editor.
echo.
echo Now, follow this path: 
echo HKEY_CURRENT_USER\SOFTWARE\Discord
echo Right-click on the Discord folder and select Delete.
echo.
echo WINDOWS 11 UNINSTALL DISCORD 
echo Press Windows + I, then go to Apps, followed by Apps and features.
echo Type discord inside the search bar, click the three-dot button next to the result and select Uninstall.
echo.
pause > nul

rem Check If User Has Admin Privileges
timeout /t 1 /nobreak > NUL
openfiles > NUL 2>&1
if %errorlevel%==0 (
    echo Running..
) else (
    echo You must run me as an Administrator. Exiting..
    echo.
    echo Right-click on me and select ^'Run as Administrator^' and try again.
    echo.
    echo Press any key to exit..
    pause > NUL
    exit
)

echo.

rem Delete Temporary Files
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*

rem Delete Used Drivers Files
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*

rem Delete Temporary Folders
rd /s /q %WinDir%\Temp
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\Temp
rd /s /q %HomePath%\AppData\LocalLow\Temp

rem Delete Used Drivers Folders
rd /s /q %SYSTEMDRIVE%\AMD
rd /s /q %SYSTEMDRIVE%\NVIDIA
rd /s /q %SYSTEMDRIVE%\INTEL

rem Recreate Empty Temporary Folders
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp

pause > NUL
exit