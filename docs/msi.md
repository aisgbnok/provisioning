# Microsoft Windows Installer (MSI) Commands

A curated list of [Windows Installer](https://learn.microsoft.com/windows/win32/msi/windows-installer-portal) commands.
The Microsoft Windows Installer service enables better corporate deployment and provides a standard format for component management.

## Unpacking MSI into Directory (TARGETDIR)

The **TARGETDIR** property specifies the root destination directory for the installation.
For more information, see [TARGETDIR property](https://learn.microsoft.com/windows/win32/msi/targetdir).

This should not install the product, but instead simply unpack it into the target directory.
*[I use this for comparing driver changes in Microsoft Surface driver packages without having to actually install them.](surface-laptop-3)*

> **Warning**\
> The `<installer.msi>` and `TARGETDIR=` parameters must be absolute paths.

In the first example, the installer is in my shell's current working directory, so it still executes fine.
The second example explicitly uses the installer's absolute path so the shell's working directory can be anywhere.
*I like to put quotes around `<installer.msi>`, but they aren't necessary.*

```PowerShell
msiexec /a "SurfaceLaptop3_Win11_22000_23.062.21635.0.msi" /passive TARGETDIR=C:\provisioning\software\surface\unpack
```

```PowerShell
msiexec /a "C:\provisioning\software\surface\SurfaceLaptop3_Win11_22000_23.062.21635.0.msi" /passive TARGETDIR=C:\provisioning\software\surface\unpack
```

| Option            | Meaning                                                                                                                    |
|:------------------|:---------------------------------------------------------------------------------------------------------------------------|
| `/a`              | [Administrative Installation](https://learn.microsoft.com/windows/win32/msi/administrative-installation)                    |
| `<installer.msi>` | Microsoft Windows Installer package to install.                                                                            |
| `/passive`        | [Only shows a progress bar.](https://learn.microsoft.com/windows/win32/msi/standard-installer-command-line-options#passive) |
| `TARGETDIR=`      | [Unpacks the installer into the specified location.](https://learn.microsoft.com/windows/win32/msi/targetdir)               |