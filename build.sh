cd qemu-t8030
mkdir build
cd build
../configure --target-list=aarch64-softmmu,x86_64-softmmu --disable-capstone --enable-lzfse --disable-werror
make
cd ..
cd ..
