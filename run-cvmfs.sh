#!/bin/bash
echo "Creating paths"
mkdir -p /cvmfs/atlas.cern.ch /cvmfs/atlas-condb.cern.ch \
         /cvmfs/atlas-nightlies.cern.ch /cvmfs/sft.cern.ch \
         /cvmfs/cernvm-prod.cern.ch /cvmfs/geant4.cern.ch \
         /cvmfs/grid.cern.ch
echo "Mounting CVMFS"
(
cat <<EOF
cernvm-prod.cern.ch /cvmfs/cernvm-prod.cern.ch cvmfs defaults 0 0
sft.cern.ch         /cvmfs/sft.cern.ch cvmfs defaults 0 0
atlas.cern.ch /cvmfs/atlas.cern.ch cvmfs defaults 0 0
atlas-condb.cern.ch /cvmfs/atlas-condb.cern.ch cvmfs defaults 0 0
atlas-nightlies.cern.ch /cvmfs/atlas-nightlies.cern.ch cvmfs defaults 0 0
geant4.cern.ch /cvmfs/geant4.cern.ch cvmfs defaults 0 0
grid.cern.ch /cvmfs/grid.cern.ch cvmfs defaults 0 0
EOF
) > /etc/fstab
mount -a
echo "done"
