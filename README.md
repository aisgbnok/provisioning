# Welcome to Provisioning

This repository holds the configuration files for compiling the personal Windows provisioning packages I have created.
These packages are for personal usage; however, they may be beneficial to others looking for examples, references, or more extensive documentation. 
The Microsoft provisioning documentation supplies a basis for understanding Windows provisioning, but there is more to discover.

I started this journey in December 2020, and since then, I have had many questions, completed lots of experiments, and still have more to understand.
This repository acts as a living space for the continuation and maintenance of this journey.

> Do not be afraid to ask for help or open an issue, but please have a basic understanding of Windows provisioning first. Thanks!
>
> For more information, see Microsoft's [Provisioning packages for Windows](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-packages) documentation.

## Documentation

While I try my best to make meaningful [contributions to the official Microsoft documentation](https://github.com/MicrosoftDocs/windows-itpro-docs/pulls?q=author%3Aaisgbnok), this project has its own set of documentation housed in the [docs](docs) directory. 
This documentation aims to consolidate and streamline information or commands that aid the users of this project.
Therefore, there might be some overlap and some things that aren't in the Microsoft Docs.

## OS Support

**The predefined packages contained in this repository are built exclusively for Windows 11 `x64` machines.**
However, the documentation and provisioning syntax is universal for all supported version of Windows (`ARM` and `x64`), unless specified otherwise.

<details>
<summary>Select for more details on OS support</summary>

These packages will always be developed and built using the most up-to-date version of Windows.
While packages have been written, built, and used on up-to-date or beta Windows 11 machines, they should work on any supported Windows 11 versions.

Provisioning packages are bound by the software they install and policies they deploy.
Therefore, some packages may deploy perfectly fine on Windows 10, as long as all the software and policies included in that package support Windows 10.
</details>

## Repository Structure

Each directory has its own readme that provides further details explaining its purpose. However, here is a brief overview:

| Directory                | Purpose                                               |
|--------------------------|-------------------------------------------------------|
| [**assets**](assets)     | Assets that will be bundled with packages.            |
| [**docs**](docs)         | Helpful commands, information, and data.              |
| [**packages**](packages) | Predefined packages that can be used as references.   |
| [**scripts**](scripts)   | Scripts that help with bundling and deploying assets. |


## Building & Installing Provisioning Packages

This section explains how to build the predefined packages in this project.

### Prerequisites

- Install the [Windows Imaging and Configuration Designer (ICD).](https://www.microsoft.com/store/apps/9nblggh4tx22)
- Read the [ICD command-line interface reference.](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-command-line)
- Clone this repository into your preferred location.
  - I would recommend a memorable and easy to find location such as `C:\`.

### Building Packages

Running [`Generate New Packages.bat`](packages/Generate%20New%20Packages.bat) will rebuild all the CAB assets and the provisioning packages.

> **Warning**\
> When building packages you must execute all commands or scripts at the root of the `packages` directory.
> 
> ```text
> C:\provisioning\packages> <-- Must be at the packages directory, wherever that is.
> ```

#### Scripts & Assets (CAB)

If you want to rebuild an individual CAB file, run the `Create [Name] Assets.bat` file for the respective set of scripts.
For more information, see the [scripts directory](scripts).

#### Package (PPKG)

For rebuilding individual packages, see [Building Commands](packages/building.md).

### Installing Packages

Execute or double-click the `ppkg` file on a Windows device.
For more information, see [Apply a provisioning package](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-apply-package).

## License & Contribution

The main goal of this project is to provide Windows provisioning documentation for myself, students, IT administrators, and whomever.

So far this is a personal project, but contributing is welcome!
Please be thoughtful and adhere to the [code of conduct](CODE_OF_CONDUCT.md), as well as the [contributor guide](CONTRIBUTING.md).

While not explicitly enforced, it is preferred to keep this software and anything emanated from it open for others to learn from;
however, if referencing and learning from this software you may build what you wish with your new knowledge. 
Providing adequate attribution whether propitiatory or open-source is highly requested. Thanks!

With that kept in mind, this software is licensed under the [MIT license](LICENSE.md).