or host-1             mkdir /opt/scripts
cd /opt/scripts
vim sbc-host-1_scripts.sh
#!/bin/bash
echo "Welcome to SBC host-1 Health-Check"
echo
echo "for Host-1 run the scripts."
echo "###########################"
echo " TO Check the ntp status. "
echo "###########################"
cm_adm -a health
echo "###########################"
echo " To Check the Hardware Platform"
echo "###########################"
pcs_system --action get_hw_platform
echo "###########################"
echo "TO execute 32- guest vm health check "
echo "##########################"
pcs_system --action check_guest_health
echo "###########################"
echo " To check all the vm state"
echo "###########################"
virsh list
echo "###########################"
echo "To Check S/W version for HOST-1 & 2 "
echo "###########################"
pcs_system --action get_sw_version
echo "###########################"
echo "to check command successed"
echo "###########################"
cm_adm --action archive
echo "###########################"
echo "to Check storage utilization"
echo "###########################"
df -kh
echo "###########################"
echo " To Check the disk Partition"
echo "###########################"
lsblk
echo "###########################"
echo "to check details disk informations"
echo "###########################"
blkid
echo "###########################"
echo "To Check Current date & time"
echo "###########################"
date
echo "###########################"
echo " To Check the firmware status-host firmware upto date"
echo "###########################"
pcs_system --action get_fw_status
echo "###########################"
echo "To Check the firmware status-host firmware upto date"
echo "###########################"
pcs_system --action get_fw_status --fw_type hdd
echo "###########################"
echo "to check image status"
echo "###########################"
cd /storage/downloads/
ls -lrth
echo "###########################"
echo "to check check-sum values"
echo "###########################"
md5sum/*
echo "###########################"
echo
echo "complete Health-Check up for Host-1"
