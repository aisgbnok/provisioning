# Windows Installer (MSI) Commands

A curated list of [Windows Installer](https://docs.microsoft.com/windows/win32/msi/windows-installer-portal) commands.

## Unpacking MSI into Directory (TARGETDIR)

The **TARGETDIR** property specifies the root destination directory for the installation.
For more information, see [TARGETDIR property](https://docs.microsoft.com/windows/win32/msi/targetdir).

```shell
msiexec /a "SurfaceLaptop3_Win11_22000_22.011.9779.0.msi" /passive TARGETDIR=C:\provisioning\software\surface\unpack
```

| Option          | Meaning                                                                                                 |
|:----------------|:--------------------------------------------------------------------------------------------------------|
| `/a`            | [Administrative Installation](https://docs.microsoft.com/windows/win32/msi/administrative-installation) |
| `<product.msi>` | Product to install.                                                                                     |
| `/passive`      | Only shows a progress bar.                                                                              |
| `TARGETDIR`     | Unpacks the installer into the specified location.                                                      |

This should not actually install the product, but instead simply unpack it into a directory you specify.
I use this for comparing driver changes in Microsoft Surface driver packages without having to actually install them.

> **Note**\
> THe `TARGETDIR` parameter must be given an absolute path, and the path must exist.
> It will not create directories for you.