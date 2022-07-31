@echo off
echo.
cls
echo [37;40m--- Compiling CAB Files[0m
echo [30;103mClean Setup[0m
cd .\clean_setup\custom-scripts
call ".\Create Clean-Setup Assets.bat"
echo.
echo [30;103mGCI Air Gap[0m
cd ..\..\gci_air_gap\custom-scripts
call ".\Create GCI-Air-Gap Assets.bat"
echo.
echo [30;103mTerminal[0m
cd ..\..\terminal\custom-scripts
call ".\Create Terminal Assets.bat"
echo.
echo [30;103mTerminal Plus[0m
cd ..\..\terminal_plus\custom-scripts
call ".\Create Terminal-Plus Assets.bat"
echo.
Echo [30;103mVirtual Machine Core[0m
cd ..\..\vm_core\custom-scripts
call ".\Create VM-Core Assets.bat"
echo.
Echo [30;103mNetLab Core[0m
cd ..\..\netlab_core\custom-scripts
call ".\Create NetLab Assets.bat"
echo.
echo.
echo [37;40m--- Compiling Packages[0m
cd ..\..\
echo [30;103mClean Setup[0m
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\clean_setup\clean_setup_customizations.xml /PackagePath:.\clean_setup\Clean_Setup.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
echo.
echo [30;103mGCI Air Gap[0m
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\gci_air_gap\gci_air_gap_customizations.xml /PackagePath:.\gci_air_gap\GCI_Air_Gap.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
echo.
echo [30;103mTerminal[0m
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\terminal\terminal_customizations.xml /PackagePath:.\terminal\Terminal.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
echo.
echo [30;103mTerminal Plus[0m
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\terminal_plus\terminal_plus_customizations.xml /PackagePath:.\terminal_plus\Terminal_Plus.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
echo.
echo [30;103mVirtual Machine Core[0m
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\vm_core\vm_core_customizations.xml /PackagePath:.\vm_core\VM_Core.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
echo.
echo [30;103mNetLab Core[0m
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\netlab_core\netlab_core_customizations.xml /PackagePath:.\netlab_core\NetLab_Core.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
pause