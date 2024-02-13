# Building Provisioning Packages

## Building All Packages

Running [`Generate New Packages.bat`](Generate%20New%20Packages.bat) will rebuild all the predefined CAB assets and provisioning packages in this repository.

> [!WARNING]  
> When building packages you must execute all commands or scripts at the root of the `packages` directory.
>
> ```output
> C:\provisioning\packages> <-- Must be at the packages directory, wherever that is.
> ```

## CAB Assets

Many packages use CAB files for bundling and deploying assets during provisioning.
These CAB files must be generated before you can build a provisioning package that depends on them.

If you want to rebuild an individual CAB file, run the `Create [Name] Assets.bat` file for the respective set of scripts.
For more information, see the [scripts directory](../scripts).

## Building Individual Packages

To rebuild an individual package run its respective ICD command listed below.
You can see more details on each package by navigating to its directory and reading its readme.

### Clean Setup

Personal package for setting up devices after a Windows clean installation.

```
icd.exe /Build-ProvisioningPackage /CustomizationXML:.\clean_setup\clean_setup_customizations.xml /PackagePath:.\clean_setup\Clean_Setup.ppkg /StoreFile:.\Microsoft-Desktop-Provisioning.dat +Overwrite
```