# Scripts

This directory contains all scripts that aid in provisioning Windows devices.
For more information on each individual set of scripts, each child directory has its own readme.

## Create Partitions

[`CreatePartitions-UEFI.txt`](CreatePartitions-UEFI.txt) configures the local disk for Windows installation.
The local disk, `Disk 0`, will be wiped during this process.

![Windows Setup](../docs/images/windows-setup/windows-setup-install-location.webp)

1. Select <kbd>Shift</kbd> + <kbd>F10</kbd> to open Command Prompt.
1. Execute the script through DiskPart, and provide the location of the script (e.g. USB flash drive).

   ```shell
   DiskPart /s D:\CreatePartitions-UEFI.txt
   ```

1. Select **Local Disk** and then select **Next**.

For more information, see [To partition hard drives and prepare to apply images](https://docs.microsoft.com/windows-hardware/manufacture/desktop/configure-uefigpt-based-hard-drive-partitions?view=windows-11#to-partition-hard-drives-and-prepare-to-apply-images).