#!/bin/bash

set -x

EVSDIR=/common/data/model/com/evs/v1.0/cam
PLOTDIR=/home/people/emc/www/htdocs/users/verification/regional/cam/prod/firewx_nest/images

VDATE=$(date -d "-1 days" +"%Y%m%d")

cd $PLOTDIR
rm -f *png
tar -xvf $EVSDIR/atmos.$VDATE/evs.plots.nam_firewxnest.atmos.grid2obs.last31days.v${VDATE}.tar

exit
