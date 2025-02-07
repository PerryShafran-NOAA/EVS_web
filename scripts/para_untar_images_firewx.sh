#!/bin/bash

set -x

EVSDIR=/home/people/emc/www/htdocs/users/verification/emc.vpppg/dev_tar_files/cam
PLOTDIR=/home/people/emc/www/htdocs/users/verification/regional/cam/dev/firewx_nest/images

VDATE=$(date -d "-3 days" +"%Y%m%d")

cd $PLOTDIR
rm -f *png
tar -xvf $EVSDIR/atmos.$VDATE/evs.plots.nam_firewxnest.atmos.grid2obs.last31days.v${VDATE}.tar

exit
