# Terminal

Terminal is a general purpose provisioning package built for installing and configuring Terminal.
Its purpose is to install the latest version of Terminal, PowerShellCore, and Microsoft Media
Extensions on PCs.

Therefore, it can be built and installed on any PC that meets all the minimum requirements.
Generally this is any currently supported version of Windows 10/11. If you are on the latest version
of Windows 11 and probably 10 then it should work fine, if not it is best to check minimum
requirements for all software this package installs.

## Included Software

This package will install and update the following software:

* PowerShellCore
* Terminal
* Microsoft AV1 Video Extension
* Microsoft HEIF Image Extension
* Microsoft HEVC Video Extension
* Microsoft VP9 Video Extensions

## Building

[More details on building packages can be found at the main readme.](https://github.com/aisgbnok/provisioning#building--installing-provisioning-packages)

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\terminal\terminal_customizations.xml /PackagePath:C:\provisioning\packages\terminal\Terminal.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```