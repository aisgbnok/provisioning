# NetLab Core

NetLab Core is a specific provisioning package built for configuring the ISTE NetLab Bench PCs.
Therefore, while it is based off of the general purpose Terminal+ package it also installs and
configures specific software and settings.

## Included Software

This package will install and update the following software:

* PowerShell
* Google Chrome
* Terminal

This package also configures specific settings for the NetLab PCs such as adding a custom Putty
profile to Terminal.

## Building

[More details on building packages can be found at the main readme.](../../README.md#building--installing-provisioning-packages)

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\netlab_core\netlab_core_customizations.xml /PackagePath:C:\provisioning\packages\netlab_core\NetLab_Core.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```