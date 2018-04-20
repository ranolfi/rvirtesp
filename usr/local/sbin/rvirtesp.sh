#!/usr/bin/env bash
#
# rvirtesp - auto mount-unmount ESP as needed - for whole-disk virtualization
#
# Marc Ranolfi, 2018-02-23 <mranolfi@gmail.com>
#
# See <https://unix.stackexchange.com/questions/374551/run-script-in-the-host-when-starting-virtual-machine-with-virt-manager>
#

# Configuration
#
ESP_ID=ata-KINGSTON_SV300S37A120G_50026B7259015AFE-part1
#


is_mounted=false
if mount | grep -qs sda1
then
  is_mounted=true
fi

if [[ $1 == "umount" ]] && [[ "$is_mounted" == true ]]
then
  if umount /dev/disk/by-id/$ESP_ID
  then
    exit 0
  else
    exit -1
  fi

elif [[ $1 == "mount" ]] && [[ "$is_mounted" == false ]]
then
  if mount /dev/disk/by-id/$ESP_ID
  then
    exit 0
  else
    exit -2
  fi

fi
