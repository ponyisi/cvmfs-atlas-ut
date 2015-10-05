#! An example of a configuration file for Frontier-squid.
#!
#! The file, localFrontierSquid.sh should reside in 
#! $ATLAS_LOCAL_ROOT_BASE/config (this is preferred)
#! or $ALRB_localConfigDir (if it is defined for all users.)
#!  

export ATLAS_FRONTIER_CONF="(proxyurl=http://utatlas.its.utexas.edu:3128)(serverurl=http://squid-frontier.usatlas.bnl.gov:23128/frontieratbnl)"
export FRONTIER_SERVER="(serverurl=http://frontier.racf.bnl.gov:8000/frontieratbnl)(serverurl=http://frontier.racf.bnl.gov:8000/frontieratbnl)(serverurl=http://frontier01.racf.bnl.gov:8000/frontieratbnl)(serverurl=http://frontier02.racf.bnl.gov:8000/frontieratbnl)(serverurl=http://lcgft-atlas.gridpp.rl.ac.uk:3128/frontierATLAS)(serverurl=http://lcgvo-frontier01.gridpp.rl.ac.uk:3128/frontierATLAS)(serverurl=http://lcgvo-frontier02.gridpp.rl.ac.uk:3128/frontierATLAS)(proxyurl=http://utatlas.its.utexas.edu:3128)"

#! In the example above, the TRIUMF Tier-1 Frontier server has granted access 
#! to my squid server atlas-sl5x64.triumf.ca access.  (If your Tier2 allows it,
#! you can use their Tier2 squid server instead for proxyurl.)






