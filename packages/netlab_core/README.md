# NetLab Core

NetLab Core is a specific provisioning package built for configuring the ISTE NetLab Bench PCs.
Therefore, while it is based off of the general purpose Terminal+ package it also installs and
configures specific software and settings.

## Included Software

This package will install and update the following software:

* PowerShellCore
* Google Chrome
* Terminal

This package also configures specific settings for the NetLab PCs such as adding a custom Putty
profile to Terminal.

## Building

You must run this command at the root of the `packages` directory.
For more information on building packages, see [Building & Installing Provisioning Packages](../../README.md#building--installing-provisioning-packages).

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\netlab_core\netlab_core_customizations.xml /PackagePath:.\netlab_core\NetLab_Core.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
```