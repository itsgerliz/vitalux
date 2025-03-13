#!/usr/bin/bash
qemu-system-x86_64 \
	-drive file=/dev/loop0,format=raw,if=none,id=mydrive \
	-device ahci,id=ahci \
	-device ide-hd,drive=mydrive,bus=ahci.0 \
	-bios /usr/share/ovmf/OVMF.fd \
	-nographic \
	-serial mon:stdio
