# Building Commands

All packages and their ICD build commands are listed below. To rebuild an individual package run the
ICD build command below the package name. To rebuild all packages
run [Generate New Packages.bat](Generate%20New%20Packages.bat).

You can see more details on each package by navigating to its directory and reading its readme.

### Clean Setup

Personal package for setting up PCs after a Windows clean installation.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\clean_setup\clean_setup_customizations.xml /PackagePath:C:\provisioning\packages\clean_setup\Clean_Setup.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```

### Terminal

General package for installing Windows Terminal.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\terminal\terminal_customizations.xml /PackagePath:C:\provisioning\packages\terminal\Terminal.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```

### Terminal Plus

General package for installing Windows Terminal and other common software.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\terminal_plus\terminal_plus_customizations.xml /PackagePath:C:\provisioning\packages\terminal_plus\Terminal_Plus.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```

### Virtual Machine Core

Made specifically for Virtual Machines.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\vm_core\vm_core_customizations.xml /PackagePath:C:\provisioning\packages\vm_core\VM_Core.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```