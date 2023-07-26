# Packages

This directory contains the configuration files for all predefined packages and instructions on building them.

## Building Packages

To learn how to build the predefined provisioning packages, see [Building Provisioning Packages](building.md).
You can see more details on each package by navigating to its directory and reading its readme.

## Package Anatomy

Each provisioning package is defined by a `customizations.xml` file.
ICD uses this file as a blueprint for building the resulting package.
The resulting package is outputted as a `.ppkg` file, along with a `.cat` file.
The `.cat` file contains basic information about the package, but is generally useless unless you are password protecting or signing your package with a certificate.
The `.ppkg` file contains all scripts, assets, and binaries and is used to provision a device during or after Windows OOBE.

For more information, see [Provisioning packages for Windows](https://learn.microsoft.com/windows/configuration/provisioning-packages/provisioning-packages).