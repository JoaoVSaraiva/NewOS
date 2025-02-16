make
qemu-system-amd64 -s -S ./build/Bootloader.img &
gdb ./build/Bootloader.img
c
target remote :1234