#!/bin/bash
/etc/cvmfs/setup-cvmfs-portable.sh
/root/startcondor.sh
service gmond start
exec bash
