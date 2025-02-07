#!/bin/bash

set -x

EVSDIR=/home/people/emc/www/htdocs/users/verification/emc.vpppg/dev_tar_files/analyses
PLOTDIR=/home/people/emc/www/htdocs/users/verification/analyses/dev/grid2obs/images

VDATE=$(date -d "-2 days" +"%Y%m%d")

cd $PLOTDIR
rm -f *png
tar -xvf $EVSDIR/atmos.$VDATE/evs.plots.analyses.atmos.grid2obs.last31days.v${VDATE}.tar

exit
