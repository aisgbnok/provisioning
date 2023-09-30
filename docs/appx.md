# AppX Cmdlets

A curated list of [AppX](https://learn.microsoft.com/powershell/module/appx/) cmdlets.
The Windows PowerShell cmdlets for AppX are designed to streamline the administration of MSIX or AppX package management.

## Get-AppxPackage

The **Get-AppxPackage** cmdlet gets a list of the app packages that are installed in a user profile.
For more information, see [Get-AppxPackage](https://learn.microsoft.com/powershell/module/appx/get-appxpackage).

```shell
Get-AppxPackage
```

```shell
Get-AppxPackage -AllUsers
```

```shell
Get-AppxPackage -AllUsers -Name "Microsoft.WindowsTerminal"
```

## Remove-AppxPackage

The **Remove-AppxPackage** cmdlet removes an app package from a user account.
For more information, see [Remove-AppxPackage](https://learn.microsoft.com/powershell/module/appx/remove-appxpackage).

```shell
Remove-AppxPackage
```

```shell
Remove-AppxPackage -Package "Microsoft.549981C3F5F10_4.2204.13303.0_x64__8wekyb3d8bbwe"
```

The parameters: `-AllUsers`, `-Confirm`, and `-WhatIf` might also be helpful.

## Reset-AppxPackage

The **Reset-AppxPackage** cmdlet will reset the app to its original settings, and the app will react as a freshly installed app.
For more information, see [Reset-AppxPackage](https://learn.microsoft.com/powershell/module/appx/reset-appxpackage).

```shell
Reset-AppxPackage -Package "Microsoft.WindowsCalculator_11.2207.11.0_x64__8wekyb3d8bbwe"
```

The parameter `-Confirm` might also be helpful.

