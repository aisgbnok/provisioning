# Provisioned Appx Packages

## Description

A list of the default apps that will be installed for each new user.
This is helpful for determining what apps you want a provisioning package to remove, as well as know if an app is not included and needs to be added.

***Command:*** *[Get Provisioned Appx Packages](../dism.md#get-appxprovisionedpackage)*

## Data

**Version:** Windows 11 22H2\
**Build:** 22621.525\
**List:** [DefaultProvisionedAppxPackages](ProvisionedAppxPackages.txt)

> **Note**\
> I have seen Edge and Teams be added to the list during OOBE.
> Microsoft must provision them during first run.
> This list is gathered from an offline mounted image, which doesn't list them.

### New in 22H2

* `Clipchamp` is now included.
* `HEVCVideoExtension` is now included.
* `RawImageExtension` is now included.
* `MicrosoftFamily` is now included (Windows 11 Home only).
* `QuickAssist` is now included.
* Most packages have been updated.
* Some packages have been removed. Mainly no longer supported packages.

## Cortana

The Cortana app is one of the apps I like to remove; however, its package name is obscure, unlike the other apps.
If you want to remove the Cortana app, use the package family name listed below.

**Store Name:** [Cortana](https://www.microsoft.com/store/productId/9NFFX4SZZ23L)\
**Store Data:** [9NFFX4SZZ23L](https://bspmts.mp.microsoft.com/v1/public/catalog/retail/products/9NFFX4SZZ23L/applockerdata)\
**Display Name:** `Microsoft.549981C3F5F10`\
**Package Family Name:** `Microsoft.549981C3F5F10_8wekyb3d8bbwe`