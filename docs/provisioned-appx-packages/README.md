# Provisioned Appx Packages

[Default Provisioned Appx Packages List](ProvisionedAppxPackages.txt)

## Description

A descriptive list of the default apps that are installed for every new user.
This is helpful for discerning which applications you may want a provisioning package to include or exclude.

***Related Command:** [Get Provisioned Appx Packages](../dism.md#get-appxprovisionedpackage)*

## Data

This data originated from an [official Microsoft ISO](https://www.microsoft.com/software-download/windows11),
generated utilizing their [Media Creation tool](https://go.microsoft.com/fwlink/?linkid=2156295).
The data presented in the succeeding table is specific to the **Core** edition (also known as **Windows 11 Home**).
However, similar characteristics should be observed across all editions.

Minor discrepancies might occur in certain data fields such as **Creation Time**,
but others like **OS Build** will remain consistent.

| *Field*          | *Data*                   |
|:-----------------|:-------------------------|
| **Edition**      | Windows 11               |
| **Version**      | 23H2                     |
| **OS Build**     | `22621.2861`             |
| **EditionID**    | Core                     |
| **Created Time** | 12/4/2023 1:40:40 AM EST |

### New in 23H2

The provisioned Appx packages in the offline image have remained consistent.
No modifications have been made; no packages have been added, removed, or updated.
The version numbers of these packages have also remained the same.

During the Out-Of-Box Experience (OOBE), additional Appx packages may be automatically added.
This will include apps such as Teams depending on the user's geographic location.
Some packages that are added are contingent on the preferences selected during the OOBE.
For example, selecting the 'Development Intent' will result in the addition of the Dev Home app to the user account.

For more information, see Microsoft's [What's new in Windows 11, version 23H2](https://learn.microsoft.com/windows/whats-new/whats-new-windows-11-version-23h2) page for more information.

### New in 22H2

* `Clipchamp` is now included.
* `HEVCVideoExtension` is now included.
* `RawImageExtension` is now included.
* `MicrosoftFamily` is now included (Windows 11 Home only).
* `QuickAssist` is now included.
* Most packages have been updated.
* Some packages have been removed. Mainly no longer supported packages.

See Microsoft's [What's new in Windows 11, version 22H2](https://learn.microsoft.com/windows/whats-new/whats-new-windows-11-version-22h2) page for more information.

## Cortana

> [!NOTE]  
> [Cortana is no longer supported.](https://support.microsoft.com/topic/end-of-support-for-cortana-d025b39f-ee5b-4836-a954-0ab646ee1efa)
> The Cortana app will be removed from the OS in a future update.

The Cortana app is one of the apps I like to remove; however, its package name is obscure, unlike the other apps.
If you want to remove the Cortana app, use the "Package Family Name" listed below.

| *Field*                 | *Data*                                                                                                         |
|:------------------------|:---------------------------------------------------------------------------------------------------------------|
| **Store Name**          | [Cortana](https://www.microsoft.com/store/productId/9NFFX4SZZ23L)                                              |
| **Store ProductID**     | [`9NFFX4SZZ23L`](https://bspmts.mp.microsoft.com/v1/public/catalog/retail/products/9NFFX4SZZ23L/applockerdata) |
| **Display Name**        | `Microsoft.549981C3F5F10`                                                                                      |
| **Package Family Name** | `Microsoft.549981C3F5F10_8wekyb3d8bbwe`                                                                        |