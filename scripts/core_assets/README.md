# Core Assets

Core Assets is a set of scripts used for handling the compilation and deployment of a standard set of assets across provisioning packages.

## Core Assets (CAB)

The `Core_Assets.cab` is used inside the majority of the provisioning packages housed in this repository.
It includes:

- Custom Windows Terminal Configuration
- JetBrains Mono Font

The `Core_Assets.bat` handles expanding and deploying the `Core_Assets.cab` during provisioning.

## Create Core Assets

The [`Create Core Assets.bat`](Create%20Core%20Assets.bat) runs `makecab` on `Create Core CAB.dff` to generate the `Core_Assets.cab` detailed above.