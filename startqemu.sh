/usr/bin/qemu-system-i386 -vga std \
 -m 768 -boot menu=on,splash-time=3000 \
 -rtc base=localtime,clock=host \
 -name vserialtest \
 -cdrom ./solab.iso \
 -boot d ./qemu-debian-lab.img \
 -chardev socket,path=/tmp/port1,server,nowait,id=port1-char \
 -device virtio-serial \
 -device virtserialport,id=port1,chardev=port1-char,name=mytestname.port.0 \
 -net user,hostfwd=tcp::10022-:22 \
 -net nic


