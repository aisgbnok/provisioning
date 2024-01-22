set LOGFILE=%SystemDrive%\Clean_Setup_Orchestrator.log
echo Expanding Core_Assets.cab >> %LOGFILE%
expand -r .\Core_Assets.cab -F:* . >> %LOGFILE%
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
echo Roboto Flex Regular (TrueType) >> %LOGFILE%
copy "RobotoFlex[GRAD,XOPQ,XTRA,YOPQ,YTAS,YTDE,YTFI,YTLC,YTUC,opsz,slnt,wdth,wght].ttf" "%WINDIR%\Fonts" >> %LOGFILE%
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Roboto Flex Regular (TrueType)" /t REG_SZ /d RobotoFlex[GRAD,XOPQ,XTRA,YOPQ,YTAS,YTDE,YTFI,YTLC,YTUC,opsz,slnt,wdth,wght].ttf /f >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
echo . >> %LOGFILE%
echo Core Assets Installed and Configured >> %LOGFILE%