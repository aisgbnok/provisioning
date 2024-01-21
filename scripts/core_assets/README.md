# Core Assets

Core Assets comprises scripts for the streamlined compilation and deployment of standard assets across various provisioning packages.

## Core Assets (CAB)

The `Core_Assets.cab`, is integral to most provisioning packages, hence its 'core' designation.
It includes:

| Name           | Type |
|:---------------|:-----|
| JetBrains Mono | Font |
| Roboto Flex    | Font |

The [`Core_Assets.bat`](Clean_Setup_Orchestrator.bat) facilitates the expansion and deployment of the `Core_Assets.cab` during provisioning.

## Create Core Assets

The [`Create Core Assets.bat`](Create%20Core%20Assets.bat) script executes `makecab` on [`Create Core CAB.dff`](Create%20Core%20CAB.ddf), generating the `Core_Assets.cab`.