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

### Intel Drivers

Installs the latest Intel drivers for supported processors and adapters.

#### Intel Wireless (Wi-Fi & Bluetooth)

The included Intel wireless drivers are for "modern" devices, but your device may require an older or a more advanced driver depending on your system for best performance.
Check your specific system and the driver information on Intel's website for support details.

* [Intel Wireless Adapters (Wi-Fi)](https://www.intel.com/content/www/us/en/download/19351)
* [Intel Wireless Bluetooth](https://www.intel.com/content/www/us/en/download/18649)

#### Intel Graphics

Intel separates their graphics drivers based on pre- and post-Xe architecture.
7th-10th Gen Processors have a shared driver, while Intel Arc and Iris Xe (11th-13th Gen) share a driver.
This package specifically targets the Surface laptop 3 and Alienware Aurora R8, both of which have a 7th-10th Gen Processor.
Therefore, on those two devices the Intel 7th-10th Gen Processor Graphics driver will be installed.

* [Intel 7th-10th Gen Processor Graphics](https://www.intel.com/content/www/us/en/download/776137)
* [Intel Arc & Iris Xe Graphics (11th-13th Gen)](https://www.intel.com/content/www/us/en/download/726609)

> [!NOTE]  
> This package does not target any 11th-13th Gen Processor and therefore does not include the Intel Arc & Iris Xe Graphics driver.
> It has been linked above for easy access if your device requires it.

### Surface Laptop 3

This package also contains specific setup instructions for any device with an Intel 1065G7
Processor. This is the processor on my Surface Laptop 3, and this package looks for that processor
pattern. Therefore, any device with that specific processor will be assumed to be my Surface Laptop
3 and configured in that manner.

### Alienware Aurora R8

Similarly, this package will assume that any device with an Intel 9700 processor is my Alienware
Aurora R8. It configures and install specific drivers for my PC that may not be needed or compatible
with all machines running an Intel 9700.