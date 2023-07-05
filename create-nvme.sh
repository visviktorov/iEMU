cd iphone
../qemu-t8030/build/qemu-img create -f raw nvme.1 32G
../qemu-t8030/build/qemu-img create -f raw nvme.2 8M
../qemu-t8030/build/qemu-img create -f raw nvme.3 128K
../qemu-t8030/build/qemu-img create -f raw nvme.4 8K
../qemu-t8030/build/qemu-img create -f raw nvram  8K
../qemu-t8030/build/qemu-img create -f raw nvme.6 4K
../qemu-t8030/build/qemu-img create -f raw nvme.7 1M
cd ..
