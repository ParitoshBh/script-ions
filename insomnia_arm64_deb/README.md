Executing `build.sh` on an arm64 machine will generate an arm64 `.deb` file of Insomnia (Core). This is a temporary script hacked together till the time Insomnia team figure out a way to incorporate arm64 builds in its build process.

There's an [open (draft) PR](https://github.com/Kong/insomnia/pull/4762) for it already.

### Requirements
1. Docker
1. Arm64 machine

### Executing Script
1. Clone this repository
1. Make `build.sh` executable
1. Execute `build.sh` - `cd script-ions/insomnia_arm64_deb && ./build.sh`
1. Once finished, the executable will be placed in `script-ions/insomnia_arm64_deb/dist` directory

Note that build is generated against develop branch. If you need it for a specific tag, checkout to that tag after cloning (and before executing `build.sh`)
