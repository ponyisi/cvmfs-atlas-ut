## University of Texas - Austin configuration
## Condor and local squid - no autodiscovery

FROM hepsw/cvmfs-atlas
MAINTAINER Peter Onyisi "ponyisi@cern.ch"

# Frontier configuration
ENV ALRB_localConfigDir /root/localConfig

# install HEP base libraries
RUN yum -y install http://linuxsoft.cern.ch/cern/slc64/x86_64/yum/extras/HEP_OSlibs_SL6-1.0.16-0.el6.x86_64.rpm

ADD etc-cvmfs-default-local /etc/cvmfs/default.local
ADD localFrontierSquid.sh /root/localConfig/localFrontierSquid.sh

# Install Condor
ADD etc-yum-htcondor.repo /etc/yum.repos.d/htcondor-stable.repo
RUN yum -y install condor
ADD condor_config.local /etc/condor/condor_config.local

