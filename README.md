# Welcome to Provisioning

This repository holds the configuration files for compiling the personal Windows provisioning packages I have created.
These packages are for personal usage; however, they may be beneficial to others looking for examples, references, or more extensive documentation.
The Microsoft provisioning documentation supplies a basis for understanding Windows provisioning, but there is more to discover.

I started this journey in December 2020, and since then, I have had many questions, completed lots of experiments, and still have more to understand.
This repository acts as a living space for the continuation and maintenance of this journey.

> [!NOTE]  
> Please have a basic understanding of Windows provisioning before opening an issue, but do not be afraid to ask for help. Thanks!
>
> For more information, see [Provisioning packages for Windows](https://learn.microsoft.com/windows/configuration/provisioning-packages/provisioning-packages).

## Documentation

This project has its own set of documentation housed in the [docs](docs) directory.
This documentation aims to consolidate and streamline information or commands that aid the users of this project.
While I try my best to make meaningful [contributions to the official Microsoft documentation](https://github.com/MicrosoftDocs/windows-itpro-docs/pulls?q=author%3Aaisgbnok), there might be some overlap and some things that aren't in the Microsoft Docs.

## OS Support

**The predefined packages contained in this repository are built exclusively for Windows 11 `x64` machines.**
However, the documentation and provisioning syntax is universal for all supported versions of Windows (`ARM` and `x64`),
unless specified otherwise.

<details>
<summary>Select for more details on OS support.</summary>

These packages will always be developed and built using the most up-to-date version of Windows.
While packages have been written, built, and used on up-to-date or beta Windows 11 machines, they should work on any supported Windows 11 versions.

Provisioning packages are bound by the software they install and the policies they deploy.
Therefore, some packages may deploy perfectly fine on Windows 10, as long as all the software and policies included in that package support Windows 10.
</details>

## Repository Structure

This repository tends to revolve around predefined provisioning packages defined in the [packages](packages) directory.
These are personal packages that I use for my personal devices.
However, there are other important scripts and information held in this repository for you to reference and learn from.
As an overview:

| Directory                | Purpose                                               |
|:-------------------------|:------------------------------------------------------|
| [**assets**](assets)     | Assets that will be bundled with packages.            |
| [**docs**](docs)         | Helpful commands, information, and data.              |
| [**packages**](packages) | Predefined packages that can be used as references.   |
| [**scripts**](scripts)   | Scripts that help with bundling and deploying assets. |

Each directory has a readme to explain its purpose in more detail.

## Building Provisioning Packages

### Prerequisites

- Install the [Windows Imaging and Configuration Designer (ICD)](https://www.microsoft.com/store/productId/9NBLGGH4TX22).
- Read the [ICD command-line interface reference](https://learn.microsoft.com/windows/configuration/provisioning-packages/provisioning-command-line).

### Building Packages

See [Building Provisioning Packages](packages/building.md).

### Installing Packages

Execute or double-click the `ppkg` file on a Windows device.
For more information, see [Apply a provisioning package](https://learn.microsoft.com/windows/configuration/provisioning-packages/provisioning-apply-package).

## Contribution

The core goal of this project is to organize and provide Windows provisioning documentation and resources for me, students, IT administrators, and whomever it might benefit.

While this is a personal project, contributing is welcome!
Please be professional and mindful of others while engaging with members or guests of this project.
If you are not sure what that entails, read the [code of conduct](CODE_OF_CONDUCT.md) as well as the [contributor guide](CONTRIBUTING.md).

While not explicitly enforced, it is preferred to keep this software and anything emanated from it open for others;
however, if referencing and learning from this software, you may build what you wish with your new knowledge.
Providing adequate attribution is requested.
Thank you!