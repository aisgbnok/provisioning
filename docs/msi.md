# Microsoft Windows Installer (MSI) Commands

*A curated list of [Windows Installer](https://learn.microsoft.com/windows/win32/msi/windows-installer-portal) commands.*

Microsoft Windows Installer is an installation and configuration service provided with Windows.
The installer service enables customers to provide better corporate deployment and provides a standard format for component management.

## Extracting MSI Contents Without Installation

To examine the contents of an MSI package without installing it, you can leverage the [**Administrative Installation**](https://learn.microsoft.com/windows/win32/msi/administrative-installation) feature in conjunction with the [**TARGETDIR**](https://learn.microsoft.com/windows/win32/msi/targetdir) property.
This is particularly useful for analyzing package contents.

### Administrative Installation

An administrative installation creates a source image of the application on a network share or local directory.
This image serves as a centralized repository for installations, enabling users to install the product from the network without requiring access to the original installation media.
Unlike a standard installation, an administrative installation does not install the application directly onto the target machine.

### TARGETDIR Property

The `TARGETDIR` property designates the root destination directory for the installation process.
In the context of an administrative installation, this property designates the location where the extracted MSI package contents will be stored.
This facilitates a structured and organized extraction of the files, allowing for subsequent analysis or deployment.

> [!IMPORTANT]
> The value provided for the `TARGETDIR=` property must be an absolute path.

### Command-Line Options

| Option            | Meaning                                                                                                                                   |
|:------------------|:------------------------------------------------------------------------------------------------------------------------------------------|
| `/a`              | Performs an [Administrative Installation](https://learn.microsoft.com/windows/win32/msi/administrative-installation).                     |
| `<installer.msi>` | Path to the MSI package.                                                                                                                  |
| `/passive`        | [Progress bar only; no prompts or errors](https://learn.microsoft.com/windows/win32/msi/standard-installer-command-line-options#passive). |
| `TARGETDIR=`      | [Absolute path to the extraction directory](https://learn.microsoft.com/windows/win32/msi/targetdir).                                     |

### Example: Extracting a Surface Laptop Driver Package

The following examples demonstrate how to extract a Surface Laptop driver package (`.msi` file) to a directory without installing it.
This technique allows for inspection of the driver files without the need for a full installation.

#### Relative Installer Path

```powershell
msiexec /a "SurfaceLaptop3_Intel_Win11_22000_24.051.12562.0.msi" /passive TARGETDIR=P:\SL3Pack
```

```powershell
msiexec /a "SurfaceLaptop5_Win11_22621_24.072.21679.0.msi" /passive TARGETDIR=P:\SL5Pack
```

#### Absolute Installer Path

```PowerShell
msiexec /a "C:\provisioning\software\surface\SurfaceLaptop3_Intel_Win11_22000_24.051.12562.0.msi" /passive TARGETDIR=P:\SL3Pack
```

```PowerShell
msiexec /a "C:\provisioning\software\surface\SurfaceLaptop5_Win11_22621_24.072.21679.0.msi" /passive TARGETDIR=P:\SL5Pack
```