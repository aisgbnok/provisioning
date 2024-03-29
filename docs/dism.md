# Deployment Image Servicing and Management (DISM) Cmdlets

A curated list of [Deployment Image Servicing and Management](https://learn.microsoft.com/powershell/module/dism/) cmdlets.
The Deployment Image Servicing and Management platform is used to mount and service Windows images.

## Clear-WindowsCorruptMountPoint

The **Clear-WindowsCorruptMountPoint** cmdlet deletes all the resources associated with a mounted image that has been corrupted.
For more information, see [Clear-WindowsCorruptMountPoint](https://learn.microsoft.com/powershell/module/dism/clear-windowscorruptmountpoint).

```shell
Clear-WindowsCorruptMountPoint
```

## Dismount-WindowsImage

The **Dismount-WindowsImage** cmdlet either saves or discards the changes to a Windows image and then dismounts the image.
For more information, see [Dismount-WindowsImage](https://learn.microsoft.com/powershell/module/dism/dismount-windowsimage).

```shell
Dismount-WindowsImage -Path "C:\offline" -Discard
```

```shell
Dismount-WindowsImage -Path "C:\offline" -Save -CheckIntegrity
```

## Expand-WindowsImage

The **Expand-WindowsImage** cmdlet applies an image to a specified location.
For more information, see [Expand-WindowsImage](https://learn.microsoft.com/powershell/module/dism/expand-windowsimage).

```shell
Expand-WindowsImage -ImagePath "C:\provisioning\images\install.wim" -Index 1 -ApplyPath "D:\" -CheckIntegrity -Verify
```

```shell
Expand-WindowsImage -ImagePath "C:\provisioning\images\install.wim" -Name "Windows 11 Home" -ApplyPath "D:\" -CheckIntegrity -Verify
```

## Export-WindowsImage

The **Export-WindowsImage** cmdlet exports a copy of the specified image to another image file.
For more information, see [Export-WindowsImage](https://learn.microsoft.com/powershell/module/dism/export-windowsimage).

> [!NOTE]  
> This cmdlet does not support the "recovery" compression type. Use `dism.exe` instead.

```shell
Export-WindowsImage -DestinationImagePath "C:\provisioning\images\export\install.wim" -SourceImagePath "C:\provisioning\images\install.wim" -SourceIndex 1 -CheckIntegrity -CompressionType "max"
```

```shell
Export-WindowsImage -DestinationImagePath "C:\provisioning\images\export\install.wim" -SourceImagePath "C:\provisioning\images\install.wim" -SourceIndex 1 -CheckIntegrity -CompressionType "max" -DestinationName "Custom"
```

## Get-AppxProvisionedPackage

The **Get-AppxProvisionedPackage** cmdlet gets information about app packages (`.appx`) in an image that are set to install for each new user.
For more information, see [Get-AppxProvisionedPackage](https://learn.microsoft.com/powershell/module/dism/get-appxprovisionedpackage).

> [!TIP]  
> For information about app packages (`.appx`) that are not provisioned, use the [**Get-AppxPackage**](appx.md#get-appxpackage) cmdlet instead.

```shell
Get-AppxProvisionedPackage -Path "C:\offline"
```

```shell
Get-AppxProvisionedPackage -Online
```

## Get-WindowsImage

The **Get-WindowsImage** cmdlet gets information about a Windows image in a WIM or VHD file.
For more information, see [Get-WindowsImage](https://learn.microsoft.com/powershell/module/dism/get-windowsimage).

```shell
Get-WindowsImage -ImagePath "C:\provisioning\images\install.wim"
```

```shell
Get-WindowsImage -ImagePath "C:\provisioning\images\install.wim" -Index 1
```

```shell
Get-WindowsImage -ImagePath "C:\provisioning\images\install.wim" -Name "Windows 11 Home"
```

```shell
Get-WindowsImage -Mounted
```

## Mount-WindowsImage

The **Mount-WindowsImage** cmdlet maps a Windows image in a WIM or VHD file to the specified directory so that it is accessible for servicing.
For more information, see [Mount-WindowsImage](https://learn.microsoft.com/powershell/module/dism/mount-windowsimage).

```shell
Mount-WindowsImage -Path "C:\offline" -ImagePath "C:\provisioning\images\install.wim" -Index 1 -CheckIntegrity
```

```shell
Mount-WindowsImage -Path "C:\offline" -ImagePath "C:\provisioning\images\install.wim" -Name "Windows 11 Home" -CheckIntegrity
```

```shell
Mount-WindowsImage -Path "C:\offline" -ImagePath "C:\provisioning\images\install.wim" -Index 1 -ReadOnly -CheckIntegrity
```

## Repair-WindowsImage

The **Repair-WindowsImage** cmdlet repairs a Windows image in a WIM or VHD file.
For more information, see [Repair-WindowsImage](https://learn.microsoft.com/powershell/module/dism/repair-windowsimage).

```shell
Repair-WindowsImage -Path 'C:\offline' -CheckHealth
```

```shell
Repair-WindowsImage -Path 'C:\offline' -ScanHealth
```

```shell
Repair-WindowsImage -Path 'C:\offline' -RestoreHealth
```

```shell
Repair-WindowsImage -Path "C:\offline" -StartComponentCleanup -ResetBase
```

```shell
Repair-WindowsImage -Online -StartComponentCleanup -ResetBase
```

## Split-WindowsImage

The **Split-WindowsImage** cmdlet creates the `.swm` files in the specified directory, naming each file the same as the specified `SplitImagePath`, but with an appended number.
For more information, see [Split-WindowsImage](https://learn.microsoft.com/powershell/module/dism/split-windowsimage).

```shell
Split-WindowsImage -ImagePath "C:\provisioning\images\install.wim" -SplitImagePath "C:\provisioning\images\export\install.swm" -FileSize 3072 -CheckIntegrity
```