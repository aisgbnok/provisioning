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
* Microsoft HEVC Video Extension

## Building

You must run this command at the root of the `packages` directory.
For more information on building packages, see [Building & Installing Provisioning Packages](../../README.md#building--installing-provisioning-packages).

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\gci_air_gap\gci_air_gap_customizations.xml /PackagePath:.\gci_air_gap\GCI_Air_Gap.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
```