set LOGFILE=%temp%\Terminal-Plus_Custom-Assets.log
echo Expanding Terminal-Plus_Custom-Assets.cab >> %LOGFILE%
expand -r .\Terminal-Plus_Custom-Assets.cab -F:* . >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
echo . >> %LOGFILE%
echo Installing Fonts >> %LOGFILE%
echo Jetbrains Mono Regular >> %LOGFILE%
copy "JetBrainsMono[wght].ttf" "%WINDIR%\Fonts" >> %LOGFILE%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "JetBrains Mono Regular (TrueType)" /t REG_SZ /d JetBrainsMono[wght].ttf /f >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
echo Jetbrains Mono Italic >> %LOGFILE%
copy "JetBrainsMono-Italic[wght].ttf" "%WINDIR%\Fonts" >> %LOGFILE%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "JetBrains Mono Italic (TrueType)" /t REG_SZ /d JetBrainsMono-Italic[wght].ttf /f >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
echo . >> %LOGFILE%
echo Setting Up Windows Terminal Settings >> %LOGFILE%
echo Creating Terminal Folder >> %LOGFILE%
mkdir "%UserProfile%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\" >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
echo Copying Terminal Settings >> %LOGFILE%
copy "blank_settings.json" "%UserProfile%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
echo . >> %LOGFILE%
echo Terminal Plus Custom Assets Installed >> %LOGFILE%