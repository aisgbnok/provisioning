# System File Checker (SFC) Commands

A curated list of [System File Checker](https://learn.microsoft.com/windows/win32/wfp/system-file-checker) commands.
The System File Checker scans the integrity of all protected system files and repairs files with problems when possible.

## Online Repair

Repairs the running operating system on your local computer.

```shell
SFC /SCANNOW
```

## Offline Repair

Repairs an offline operating system on an external drive.

```shell
SFC /SCANNOW /OFFBOOTDIR=D:\ /OFFWINDIR=D:\Windows /OFFLOGFILE=C:\provisioning\SFC-Log.txt
```