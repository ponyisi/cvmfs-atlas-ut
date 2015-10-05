#!/bin/bash
echo "Creating paths"
mkdir -p /cvmfs/atlas.cern.ch /cvmfs/atlas-condb.cern.ch
echo "Mounting CVMFS"
mount -a
echo "done"
