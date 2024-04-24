#!/bin/bash

set -x

EVSDIR=/common/data/model/com/evs/v1.0/analyses
PLOTDIR=/home/people/emc/www/htdocs/users/verification/analyses/prod/grid2obs/images

VDATE=$(date -d "-2 days" +"%Y%m%d")

cd $PLOTDIR
rm -f *png
tar -xvf $EVSDIR/atmos.$VDATE/evs.plots.analyses.atmos.grid2obs.last31days.v${VDATE}.tar

exit
