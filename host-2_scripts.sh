host-2        #!/bin/bash
echo "Welcome to SBC Host-2 Health-Check"
echo
echo "for Host-1 run the scripts."
echo "###########################"
echo "to Check storage utilization. "
echo "###########################"
df -kh
echo "###########################"
echo " To Check the disk Partition. "
echo "###########################"
lsblk
echo "###########################"
echo " to check details disk informations . "
echo "###########################"
blkid
echo "###########################"
echo " To check all the vm state."
echo "###########################"
virsh list
echo "###########################"
echo " To Check Current date & time . "
echo "###########################"
date
echo
echo "###########################"
echo "complete Health-Check up for Host-2"
