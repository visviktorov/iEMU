cd iphone
python3 ../qemu-t8030-tools/bootstrap_scripts/asn1trustcachedecode.py Firmware/038-44087-125.dmg.trustcache Firmware/038-44087-125.dmg.trustcache.out
python3 ../qemu-t8030-tools/bootstrap_scripts/dump_trustcache.py Firmware/038-44087-125.dmg.trustcache.out | grep cdhash | cut -d' ' -f2 > tchashes
for filename in $(find strap/ -type f); do jtool2 --sig $filename 2>/dev/null; done | grep CDHash | cut -d' ' -f6 | cut -c 1-40 >> ./tchashes
python3 ../qemu-t8030-tools/bootstrap_scripts/create_trustcache.py tchashes static_tc
cd ..
