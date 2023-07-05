cd iphone
python3 ../qemu-t8030-tools/bootstrap_scripts/asn1rdskdecode.py 038-44087-125.dmg 038-44087-125.dmg.out
hdiutil resize -size 512M -imagekey diskimage-class=CRawDiskImage 038-44087-125.dmg.out
hdiutil attach -imagekey diskimage-class=CRawDiskImage 038-44087-125.dmg.out
sudo diskutil enableownership /Volumes/AzulSeed18A5351d.arm64eUpdateRamDisk
sudo rsync -av strap/ /Volumes/AzulSeed18A5351d.arm64eUpdateRamDisk
sudo rm /Volumes/AzulSeed18A5351d.arm64eUpdateRamDisk/System/Library/LaunchDaemons/*
sudo cp ../qemu-t8030/setup-ios/bash.plist /Volumes/AzulSeed18A5351d.arm64eUpdateRamDisk/System/Library/LaunchDaemons/
hdiutil detach /Volumes/AzulSeed18A5351d.arm64eUpdateRamDisk
cd ..
