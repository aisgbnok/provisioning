# Welcome to Provisioning

This repository holds the configuration files for compiling the personal windows provisioning
packages I have created over the past year. These packages are for personal usage; however, they may
be beneficial to others looking for examples, references, or more extensive documentation. The
Microsoft provisioning documentation supplied a basis for understanding windows provisioning, but
there was much more to discover that was not implicitly documented.

I started this journey a year ago, and throughout the past year, I have had many questions,
completed lots of experiments, and have more to understand. This repository acts as a living space
for the continuation and maintenance of this journey.


> To reduce redundancy and make it easier for everyone, it is assumed that you have a general understanding of Windows Provisioning Packages. Do not be afraid to ask for help or open an issue, but please have a basic understanding of provisioning packages first. Thanks!
>
> [Here is a link to the Microsoft Documentation!](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-packages) :thumbsup:

## Documentation

> Documentation is a work in progress.

You can access documentation in the [`docs`](docs) directory.

## OS Support

**The packages contained in this repository are built exclusively for `x64` machines.**

As long as you are using a supported version of Windows 10, and preferably 11, version support
should not be an issue.

<details>
<summary>Click here for more details on OS support</summary>
<br>

I almost always use the latest OS version available whether Windows, Linux, or macOS. Therefore,
these packages will always be developed and built using the most recent version of Windows. While
packages have been written, built, and used on up-to-date Windows 11 machines, they should work on
any supported Windows 10 versions.

As an example, the *NetLab Core* package is built on Windows 11 but built for and used on Windows 10
20H2 machines.

For the most part provisioning packages are bound by the software they install and policies they
deploy. [Terminal, for example, currently requires Windows 10 2004 or greater.](https://github.com/microsoft/terminal/issues/11371)
*Windows 10 2004 has already stopped receiving support.* If you created a provisioning package today
that solely installed Terminal, it would install on 2004, even though 2004 is EOL. However, It would
most likely fail on any older Windows version as Terminal's min version is 2004.

Knowing this, when developing and installing provisioning packages it is advised to check the min
version of software and windows policies it installs and deploys. Although, as long as you are using
a supported version of Windows 10, and preferably 11, version support should not be an issue.

🔍 You can go [here](https://docs.microsoft.com/lifecycle/products/) to search for a Microsoft
product's lifecycle.
[Like Windows 10!](https://docs.microsoft.com/lifecycle/products/windows-10-home-and-pro)
</details>

## Building & Installing Provisioning Packages

How to build/compile the packages in this project.

### Prerequisites

- [Windows Imaging and Configuration Designer (ICD)](https://www.microsoft.com/store/apps/9nblggh4tx22)
- [Read ICD CLI Reference](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-command-line)
- Clone this repository into the `C:\provisioning\` directory.
    - This is required as I'm not sure if ICD accepts relative paths.
    - [Will look into this later, relative paths would provide more flexibility. #7](https://github.com/aisgbnok/provisioning/issues/7)

### Building

Running [Generate New Packages.bat](packages/Generate%20New%20Packages.bat), will rebuild all the
CAB asset packages and then rebuild all the provisioning packages.

#### Assets (CAB)

If you want to rebuild an individual CAB file, run the `Create [Package Name] Assets.bat` file for
the respective package.

```
./packages/[Package Name]/custom-scripts/Create [Package Name] Assets.bat
```

#### Package (PPKG)

If you want to rebuild an individual package run the corresponding ICD command in
the [`building.md`](packages/building.md) file.

### Installing

Execute or double-click the `ppkg` file on a Windows 10/11 device.

[Please refer to Microsoft's official documentation for more detail.](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-apply-package)

## Provisioning 4.0

The plan for delivering Provisioning 4.0 is in progress and will be updated as the project continues
to develop. The goal of v4 is to improve the packages themselves by rewriting for efficiency and
introduce changes to improve long-term maintainability.

## License & Contribution

The main goal of this project is to provide windows provisioning documentation for myself, students,
IT administrators, and whomever.

So far this is largely a personal project, but contributing is welcome! Please be thoughtful and
adhere to the [code of conduct](CODE_OF_CONDUCT.md), as well as read and follow
the [contributor guide.](CONTRIBUTING.md) Thanks!

While not explicitly enforced, it is preferred to keep this software and anything emanated from it
open for others to learn from; however, if referencing and learning from this software you may build
what you wish with your new knowledge. Providing attribution or thanks is recommended and thanked.
🙏

With that kept in mind, this software is licensed under the [MIT license.](LICENSE.md)

*These sections may be improved or changed if needed.*