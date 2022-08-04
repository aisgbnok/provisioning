# Clean Setup

Clean Setup is a personal provisioning package built for setting up Windows after performing a clean
installation. It is specifically built for my needs but may be a helpful example. **Do not blindly
use this package on your machine.**

*This is a multivariant provisioning package.*

## Included Software

This package installs and updates a lot of core software including:

* Microsoft Edge
* PowerShell
* OneDrive
* Google Chrome
* Microsoft AV1 Video Extension
* Microsoft HEVC Video Extension

### Intel Drivers

Installs the latest Intel drivers for supported processors and adapters.
The included Intel drivers are for "modern" devices, but your device may require an older or a more advanced driver depending on your system for best performance.
Check your specific system and the driver information on Intel's website for support details.

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