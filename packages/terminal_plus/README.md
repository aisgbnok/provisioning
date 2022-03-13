# Terminal+

Terminal+ is a general purpose provisioning package built for installing and configuring Terminal as
well as other common software. Its purpose is to extend upon the lean Terminal package by installing
other common software such as Google Chrome.

Therefore, it can be built and installed on any PC that meets all the minimum requirements.
Generally this is any currently supported version of Windows 10/11. If you are on the latest version
of Windows 11 and probably 10 then it should work fine, if not it is best to check minimum
requirements for all software this package installs.

## Included Software

This package will install and update the following software:

* Microsoft Edge
* PowerShellCore
* OneDrive
* Google Chrome
* Terminal
* Microsoft AV1 Video Extension
* Microsoft HEVC Video Extension

## Building

[More details on building packages can be found at the main readme.](../../README.md#building--installing-provisioning-packages)

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\terminal_plus\terminal_plus_customizations.xml /PackagePath:C:\provisioning\packages\terminal_plus\Terminal_Plus.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```