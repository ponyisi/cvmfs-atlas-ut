#!/bin/bash
hostname $(python -c 'import sys, socket; print socket.gethostbyaddr(sys.argv[1])[0]' $(curl -s http://169.254.169.254/latest/meta-data/public-ipv4))
/root/run-cvmfs.sh
/root/startcondor.sh
service gmond start
exec bash
