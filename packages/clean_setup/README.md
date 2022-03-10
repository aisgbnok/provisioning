# Clean Setup

Clean Setup is a personal provisioning package built for setting up Windows after performing a clean
installation. It is specifically built for my needs but may be a helpful example. **Do not blindly
use this package on your machine.**

*This is a multivariant provisioning package.*

## Included Software

This package installs and updates a lot of core software including:

* Microsoft Edge
* PowerShellCore
* OneDrive
* Google Chrome
* Terminal
* Microsoft AV1 Video Extension
* Microsoft HEIF Image Extension
* Microsoft HEVC Video Extension
* Microsoft VP9 Video Extensions

### Intel Drivers

Installs the latest Intel Drivers for modern processors and adapters. For graphics this generally
means Intel 6th gen and up. However, it is recommended to check your specific system and the driver
information on Intel's website for support details.

* [Wi-Fi](https://www.intel.com/content/www/us/en/download/19351/)
* [Bluetooth](https://www.intel.com/content/www/us/en/download/18649/)
* [Graphics](https://www.intel.com/content/www/us/en/download/19344/)

### Surface Laptop 3

This package also contains specific setup instructions for any device with an Intel 1065G7
Processor. This is the processor on my Surface Laptop 3, and this package looks for that processor
pattern. Therefore, any device with that specific processor will be assumed to be my Surface Laptop
3 and configured in that manner.

### Alienware Aurora R8

Similarly, this package will assume that any device with an Intel 9700 processor is my Alienware
Aurora R8. It configures and install specific drivers for my PC that may not be needed or compatible
with all machines running an Intel 9700.

## Building

[More details on building packages can be found at the main readme.](https://github.com/aisgbnok/provisioning#building--installing-provisioning-packages)

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:C:\provisioning\packages\clean_setup\clean_setup_customizations.xml /PackagePath:C:\provisioning\packages\clean_setup\Clean_Setup.ppkg /StoreFile:C:\provisioning\packages\Microsoft-Desktop-Provisioning.dat +Overwrite
```