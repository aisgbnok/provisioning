# Microsoft Windows Installer (MSI) Commands

A curated list of [Windows Installer](https://docs.microsoft.com/windows/win32/msi/windows-installer-portal) commands.
The Microsoft Windows Installer service enables better corporate deployment and provides a standard format for component management.

## Unpacking MSI into Directory (TARGETDIR)

The **TARGETDIR** property specifies the root destination directory for the installation.
For more information, see [TARGETDIR property](https://docs.microsoft.com/windows/win32/msi/targetdir).

> **Note**\
> The `TARGETDIR` parameter must be given an absolute path, and the path must exist.
> It will not create directories for you.

```shell
msiexec /a "SurfaceLaptop3_Win11_22000_22.081.11638.0.msi" /passive TARGETDIR=C:\provisioning\software\surface\unpack
```

| Option          | Meaning                                                                                                                    |
|:----------------|:---------------------------------------------------------------------------------------------------------------------------|
| `/a`            | [Administrative Installation](https://docs.microsoft.com/windows/win32/msi/administrative-installation)                    |
| `<product.msi>` | Product to install.                                                                                                        |
| `/passive`      | [Only shows a progress bar.](https://docs.microsoft.com/windows/win32/msi/standard-installer-command-line-options#passive) |
| `TARGETDIR`     | [Unpacks the installer into the specified location.](https://docs.microsoft.com/windows/win32/msi/targetdir)               |

This should not actually install the product, but instead simply unpack it into the specified directory.
I use this for comparing driver changes in Microsoft Surface driver packages without having to actually install them.