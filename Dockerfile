## University of Texas - Austin configuration
## Condor and local squid - no autodiscovery

FROM hepsw/cvmfs-atlas
MAINTAINER Peter Onyisi "ponyisi@cern.ch"

# Frontier configuration
ENV ALRB_localConfigDir /root/localConfig

# install HEP base libraries
RUN yum -y install http://linuxsoft.cern.ch/cern/slc64/x86_64/yum/extras/HEP_OSlibs_SL6-1.0.16-0.el6.x86_64.rpm ; yum clean all

# Install Condor
ADD etc-yum-htcondor.repo /etc/yum.repos.d/htcondor-stable.repo
RUN yum -y install condor ; yum clean all
ADD condor_config.local /etc/condor/condor_config.local

# Install OSG WN base
RUN yum -y install yum-plugin-priorities; yum -y install https://repo.grid.iu.edu/osg/3.3/osg-3.3-el6-release-latest.rpm osg-wn-client wget rsync ; yum clean all

# Install ganglia
RUN yum -y install ganglia-gmond ; yum clean all
ANDD etc-ganglia-gmond.conf /etc/ganglia/gmond.conf

ADD etc-cvmfs-default-local /etc/cvmfs/default.local
ADD localFrontierSquid.sh /root/localConfig/localFrontierSquid.sh

ADD run-cvmfs.sh /etc/cvmfs/run-cvmfs.sh
ADD startcondor.sh /root/startcondor.sh
#ADD etc-cubied-condor.conf /etc/cubie.d/condor.conf
ADD start.sh /root/start.sh

RUN chmod uga+rx /etc/cvmfs/run-cvmfs.sh /root/startcondor.sh /root/start.sh

ENTRYPOINT /root/start.sh
