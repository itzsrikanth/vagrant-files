# Vagrant file script to boot VMs with MongoDB ReplicaSet


## Issues
- Replica set not reflected in slaves because the `automate/config.sh` needs to be run after all the VMs are up. Need to find such hook.