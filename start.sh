#!/bin/bash
/root/run-cvmfs.sh
/root/startcondor.sh
service gmond start
exec bash
