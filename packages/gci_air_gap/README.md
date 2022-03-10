# GCI Air Gap

GCI Air Gap is a specific provisioning package built for configuring the ESL GCI Air Gap Lab PCs.
Therefore, while it is based off of the general purpose Terminal+ package it also installs and
configures specific software and settings.

## Included Software

This package will install and update the following software:

* Microsoft Edge
* PowerShellCore
* Google Chrome
* Terminal
* Microsoft AV1 Video Extension
* Microsoft HEIF Image Extension
* Microsoft HEVC Video Extension
* Microsoft VP9 Video Extensions

## Building

[More details on building packages can be found at the main readme.](https://github.com/aisgbnok/provisioning#building--installing-provisioning-packages)

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\gci_air_gap\gci_air_gap_customizations.xml /PackagePath:C:\provisioning\packages\gci_air_gap\GCI_Air_Gap.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```