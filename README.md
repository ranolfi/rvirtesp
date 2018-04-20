rvirtesp - auto mount-unmount ESP (EFI System Partition) as needed

This is a QEMU hook aimed at allowing passing the hosts's root block device (HDD|SDD) to a virtual machine where you normaly couldn't because both host and guest are using UEFI and the EFI system partition is mounted in the host.

It automates the unmounting the ESP on the host when the VM is powered on, and the remounting on VM power-off.

Driven by https://askubuntu.com/questions/927574/add-physical-partition-to-qemu-kvm-virtual-machine-in-virt-manager and https://unix.stackexchange.com/questions/374551/run-script-in-the-host-when-starting-virtual-machine-with-virt-manager.
