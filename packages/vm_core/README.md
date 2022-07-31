# Virtual Machine Core

Virtual Machine Core is a general purpose provisioning package that is also specific to Virtual
Machines. Its purpose is to simply update and install core software on Windows VMs. It helps make
maintaining and setting up VMs faster by bundling common software together. It is very similar to
the Terminal+ package but may contain specific configurations for VMs.

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

You must run this command at the root of the `packages` directory.
For more information on building packages, see [Building & Installing Provisioning Packages](../../README.md#building--installing-provisioning-packages).

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\vm_core\vm_core_customizations.xml /PackagePath:.\vm_core\VM_Core.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
```