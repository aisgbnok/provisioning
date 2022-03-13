# DISM commands

Helpful Deployment Image Servicing and Management (DISM) commands relating to provisioning.

## Check Image Information

[Take Inventory of an Image or Component Using DISM](https://docs.microsoft.com/windows-hardware/manufacture/desktop/take-inventory-of-an-image-or-component-using-dism)

```shell
Dism /Get-ImageInfo /ImageFile:C:\provisioning\images\install.wim
```

```shell
Dism /Get-ImageInfo /ImageFile:C:\provisioning\images\install.wim /Index:1
```

## Mount Image

[Mounts an image from a .ffu, .wim, .vhd or .vhdx file to the specified directory so that it is available for servicing.](https://docs.microsoft.com/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#mount-image)

```shell
Dism /Mount-image /ImageFile:C:\provisioning\images\install.wim /Index:1 /MountDir:C:\provisioning\mount /Optimize /CheckIntegrity
```

## Unmount Image

[Unmounts the .ffu, .wim, .vhd or .vhdx file and either commits or discards the changes that were made when the image was mounted.](https://docs.microsoft.com/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14#unmount-image)

```shell
Dism /Unmount-Image /MountDir:C:\provisioning\mount /Discard
```

```shell
Dism /Unmount-Image /MountDir:C:\provisioning\mount /Commit /CheckIntegrity
```

## Get Provisioned Appx Packages

[DISM App Package (.appx or .appxbundle) Servicing Command-Line Options](https://docs.microsoft.com/windows-hardware/manufacture/desktop/dism-app-package--appx-or-appxbundle--servicing-command-line-options)

Displays information about app packages (.appx or .appxbundle), in an image, that are set to install
for each new user.

For the current online installation image.

```shell
Dism /Online /Get-ProvisionedAppxPackages
```

For an offline mounted image (.wim).

```shell
Dism /Image:C:\provisioning\mount /Get-ProvisionedAppxPackages
```