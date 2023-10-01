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

| *Field*          | *Data*                  |
|:-----------------|:------------------------|
| **Edition**      | Windows 11              |
| **Version**      | 22H2                    |
| **OS Build**     | `22621.1702`            |
| **EditionID**    | Core                    |
| **Created Time** | 5/5/2023 9:09:25 AM EST |

> [!NOTE]  
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
If you want to remove the Cortana app, use the "Package Family Name" listed below.

| *Field*                 | *Data*                                                                                                         |
|:------------------------|:---------------------------------------------------------------------------------------------------------------|
| **Store Name**          | [Cortana](https://www.microsoft.com/store/productId/9NFFX4SZZ23L)                                              |
| **Store ProductID**     | [`9NFFX4SZZ23L`](https://bspmts.mp.microsoft.com/v1/public/catalog/retail/products/9NFFX4SZZ23L/applockerdata) |
| **Display Name**        | `Microsoft.549981C3F5F10`                                                                                      |
| **Package Family Name** | `Microsoft.549981C3F5F10_8wekyb3d8bbwe`                                                                        |