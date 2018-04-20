rvirtesp - a QEMU hook that automates the unmounting of the ESP (EFI System Partition) in the host when launching a virtual machine that is about to mount the same ESP.

This is aimed at allowing passing the entire hosts's root block device (HDD|SDD) to a virtual machine where you normaly shouldn't because both host and guest run in UEFI mode and the ESP is mounted in the host. It automates the unmounting the ESP on the host when the VM is powered on, and the remounting on VM power-off.

A "manual" script is also provided, although you shouldn't need to use it; it can be called as `rvirtesp` from your command line.

Driven by https://askubuntu.com/questions/927574/add-physical-partition-to-qemu-kvm-virtual-machine-in-virt-manager and https://unix.stackexchange.com/questions/374551/run-script-in-the-host-when-starting-virtual-machine-with-virt-manager.
