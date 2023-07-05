cd iphone
../qemu-t8030/build/qemu-system-aarch64 -s -M t8030,trustcache-filename=static_tc,boot-mode=manual,ticket-filename=root_ticket.der \
-kernel kernelcache.research.iphone12b \
-dtb Firmware/all_flash/DeviceTree.n104ap.im4p \
-append "debug=0x14e kextlog=0xffff serial=3 -v rd=md0 wdt=-1" \
-initrd 038-44087-125.dmg.out \
-cpu max -smp 1 \
-m 4G -serial mon:stdio \
-drive file=nvme.1,format=raw,if=none,id=drive.1 \
-device nvme-ns,drive=drive.1,bus=nvme-bus.0,nsid=1,nstype=1,logical_block_size=4096,physical_block_size=4096 \
-drive file=nvram,if=none,format=raw,id=nvram \
-device apple-nvram,drive=nvram,bus=nvme-bus.0,nsid=5,nstype=5,id=nvram,logical_block_size=4096,physical_block_size=4096 \
-monitor telnet:127.0.0.1:1235,server,nowait
cd ..
