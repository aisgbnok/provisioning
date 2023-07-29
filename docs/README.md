# Documentation

This directory contains documentation such as commands, information, and data relating to this project.
You will find a curated list of commands to aid in analyzing Windows images and creating provisioning packages.
You will find curated information that allows you to make intelligent decisions while creating provisioning packages.

*The goal is to provide documentation that helps you with provisioning work.*

## Commands

A list of commands for working with Windows images, to extracting MSI executables, to getting a list of installed apps.
This is not a comprehensive set of commands, but a curated set from Microsoft's extensive documentation.

| Module          | Description                                             |
|:----------------|:--------------------------------------------------------|
| [AppX](appx.md) | A set of commands for MSIX or AppX package management.  |
| [DISM](dism.md) | A set of commands for servicing Windows images.         |
| [MSI](msi.md)   | A set of commands for the Microsoft Windows Installer.  |
| [SFC](sfc.md)   | A set of commands for repairing protected system files. |

## Information

A set of information to help with making decisions during provisioning work.
For example, a list of default Windows apps to inform you when deciding what your provisioning package will uninstall or install.

| Category                                               | Description                                                  |
|:-------------------------------------------------------|:-------------------------------------------------------------|
| [Provisioned Appx Packages](provisioned-appx-packages) | A list of the default apps included with Windows.            |
| [Surface Laptop 3 Drivers](surface-laptop-3)           | A list of components in the Surface Laptop 3 driver package. |