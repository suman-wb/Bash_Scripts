for oam                                                                                                      #!/bin/bash
echo "welcome to oam Floating IP"
echo "###########################"
echo " To Check all vms health- its time consuming, be patience"
echo "###########################"
sbc_health --test all
echo "###########################"
echo " To Check the Ststus"
echo "###########################"
MIcmd state vc
echo "###########################"
echo " To Check the version"
echo "###########################"
get_version --display all
echo "###########################"
echo " To check the listed alarms"
echo "###########################"
alarm_cli --list all
echo "###########################"
echo " alarm information"
echo "###########################"
alarm_check --action health
echo " ##########################"
echo " To Check current date & time"
echo "###########################"
date
echo "###########################"
echo " To check snmp configarations "
echo "###########################"
snmpconf_adm --action show_community
echo "###########################"
echo " Check"
echo "###########################"
rcc_srv_state --action display
echo "###########################"
echo " Check "
echo "###########################"
rem_srv_state --action display
echo "###########################"
echo " To Check the vm status "
echo "###########################"
lcp_status
echo "###########################"
echo
# Now ssh diag@MediaIp to login in media and verify media commands
echo "###########################"
sbc_health --test mp
ssh diag@169.254.195.255
echo "###########################"
vi node
echo "###########################"
vi port stat all
echo "###########################"
vi red group
echo "###########################"
vi pak running
echo "###########################"
vi version all
echo "###########################"
vi nh session
echo "###########################"
vi alarm active
echo "###########################"
run script pf1:issu_pre.scr 
echo "###########################"
vi res usage 
echo "###########################"
echo
echo "###########################"
ssh diag@169.254.195.255
echo "###########################"
vi node
echo "###########################"
vi port stat all
echo "###########################"
vi red group
echo "###########################"
vi pak running
echo "###########################"
vi version all
echo "###########################"
vi nh session
echo "###########################"
vi alarm active
echo "###########################"
run script pf1:issu_pre.scr 
echo "###########################"
vi res usage 
echo "###########################"
