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

## Provisioning Alignment

_Provisioning Alignment_ is the name given to the currently underway repository, codebase, and
package cleanup. The goal:

- [X] Align the packages' version numbers
  etc. [Issue.](https://github.com/aisgbnok/provisioning/issues/3) [Pull Request.](https://github.com/aisgbnok/provisioning/pull/2)
- [X] Provide improved repository documentation and roadmaps, like this. 😁
- [ ] Include more detailed software descriptions. (What software does each package includes? What
  version?)
- [ ] Hopefully add helpful custom automation. (GitHub Actions 🚀)

_[Here is the link to the GitHub project for _Provisioning
Alignment_.](https://github.com/aisgbnok/provisioning/projects/2) You can also access it by
navigating to the **Projects** tab in GitHub._

## Building & Installing Provisioning Packages

How to build/compile the packages in this project.

> These packages have been written, built, and used on a Windows 11 machine. However, they should work fine on recent Windows 10 versions, like 20H2. For example, the _NetLab Core_ package was built on W11 but used on W10 20H2 machines.

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

If you want to rebuild a single CAB file run the `Create [Package Name] Assets.bat` file for the
individual package.

```
./packages/[Package Name]/custom-scripts/Create [Package Name] Assets.bat
```

#### Package (PPKG)

If you want to rebuild a single package run the corresponding ICD command in
the [commands.txt](packages/commands.txt) file.

### Installing

Execute or double-click the `ppkg` file on a Windows 10/11 device.

[Please refer to Microsoft's official documentation for more detail.](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-apply-package)

## Provisioning 4.0

The plan for delivering Provisioning 4.0 is in progress and will be updated as the project continues
to develop. The goal is to finish _Provisioning Alignment_ which will largely clean up this repo,
then work can begin on v4. The goal of v4 is largely an extension of _Provisioning Alignment_,
however with a clearer mission to improve the packages themselves.

_Provisioning Alignment_'s goal is to clean up and add documentation for what is already present.
v4's goal is to rewrite the packages for efficiency and introduce possibly breaking changes to
improve long-term maintainability.

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

_These sections may be improved or changed when needed._





