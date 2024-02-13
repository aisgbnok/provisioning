@echo off
echo.
cls
echo [37;40m--- Compiling CAB Files[0m
echo [30;103mCore Assets[0m
cd ..\scripts\core_assets
call ".\Create Core Assets.bat"
echo.
echo.
echo [37;40m--- Compiling Packages[0m
cd ..\..\packages
echo [30;103mClean Setup[0m
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\clean_setup\clean_setup_customizations.xml /PackagePath:.\clean_setup\Clean_Setup.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
pause