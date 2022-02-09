# Provisioning Commands

All packages and their ICD build command are listed below. To rebuild an individual package run the
ICD build command below the package name. To rebuild all packages
run [Generate New Packages.bat](Generate%20New%20Packages.bat).

### Clean Setup

Updates OneDrive and Edge, and installs PowerShellCore, Windows Terminal, and AV1, HEIF, HEVC, and
VP9 Video Extensions on all computers. Installs Intel Drivers and Chrome on the Alienware Aurora,
and Surface Laptop 3.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\clean_setup\clean_setup_customizations.xml /PackagePath:C:\provisioning\packages\clean_setup\Clean_Setup.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```

### GCI Air Gap

Made specifically for the GCI Air Gap Lab. Installs Chrome, PowerShellCore, and Windows Terminal.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\gci_air_gap\gci_air_gap_customizations.xml /PackagePath:C:\provisioning\packages\gci_air_gap\GCI_Air_Gap.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```

### NetLab Core

Made specifically for NetLab. Installs Chrome, PowerShellCore, and Windows Terminal.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\netlab_core\netlab_core_customizations.xml /PackagePath:C:\provisioning\packages\netlab_core\NetLab_Core.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```

### Terminal

Installs PowerShellCore, Windows Terminal, and AV1, HEIF, HEVC, and VP9 Video Extensions on all
computers and removes legacy Edge.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\terminal\terminal_customizations.xml /PackagePath:C:\provisioning\packages\terminal\Terminal.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```

### Terminal Plus

Updates OneDrive and Edge, and installs Chrome, PowerShellCore, Windows Terminal, and AV1, HEIF,
HEVC, and VP9 Video Extensions on all computers. Removes legacy Edge, 3DViewer, and Mixed Reality
Portal.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\terminal_plus\terminal_plus_customizations.xml /PackagePath:C:\provisioning\packages\terminal_plus\Terminal_Plus.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```

### Virtual Machine Core

Made specifically for Virtual Machines. Updates OneDrive and Edge, and installs Chrome,
PowerShellCore, Windows Terminal, and AV1, HEIF, HEVC, and VP9 Video Extensions. Removes lots of
provisioned apps including legacy Edge, 3DViewer, and Mixed Reality Portal.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\vm_core\vm_core_customizations.xml /PackagePath:C:\provisioning\packages\vm_core\VM_Core.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```