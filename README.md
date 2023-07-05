# iEMU
## About
iEMU is a set of script(s) aimed at helping you create an iPhone 11 virtual machine. This virtual machine uses a modified version of QEMU called qemu-t8030.
## Usage
First, you'll want to clone iEMU. Make sure you clone it with it's submodules as well:
```
git clone --recurse-submodules https://github.com/visviktorov/iEMU.git
```
Then, you'll want to execute the `auto.sh` shell script:
```
./auto.sh
```
This will also fetch iOS. To run the virtual machine, you can run the `run.sh` shell script:
```
./run.sh
```
This will fire up iOS in your newly created iPhone 11 emulator. This will only be in text-mode running bash however. In a (maybe) future update, a fully-working iOS instructions will be added here.
