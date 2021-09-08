set LOGFILE=%SystemDrive%\Netlab_Assets_Install.log
echo Expanding NetLab_Assets.cab >> %LOGFILE%
expand -r .\NetLab_Assets.cab -F:* . >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
echo .
echo Installing Fonts >> %LOGFILE%
copy "JetBrainsMono[wght].ttf" "%WINDIR%\Fonts" >> %LOGFILE%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "JetBrains Mono Regular (TrueType)" /t REG_SZ /d JetBrainsMono[wght].ttf /f >> %LOGFILE%
copy "JetBrainsMono-Italic[wght].ttf" "%WINDIR%\Fonts" >> %LOGFILE%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "JetBrains Mono Italic (TrueType)" /t REG_SZ /d JetBrainsMono-Italic[wght].ttf /f >> %LOGFILE%
echo .
echo Creating Terminal Folder >> %LOGFILE%
mkdir "%UserProfile%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\" >> %LOGFILE%
echo Copying Terminal Settings >> %LOGFILE%
copy "settings.json" "%UserProfile%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState" >> %LOGFILE%