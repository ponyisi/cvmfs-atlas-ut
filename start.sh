#!/bin/bash
/etc/cvmfs/run-cvmfs.sh
/root/startcondor.sh
service gmond start
exec bash
