#!/bin/bash

set -x

EVSDIR=/home/people/emc/www/htdocs/users/verification/emc.vpppg/dev_tar_files/mesoscale
PLOTDIR=/home/people/emc/www/htdocs/users/verification/regional/mesoscale/dev/grid2grid/precip/images

cd $PLOTDIR
VDATE=$(date -d "-2 days" +"%Y%m%d")
rm -f *png
tar -xvf $EVSDIR/atmos.$VDATE/evs.plots.mesoscale.atmos.precip.v${VDATE}.tar

PLOTDATE=$(echo "$(ls ${PLOTDIR}/*.gif | tail -1)" | grep -oE '[0-9]{8}')
PLOTMAPDIR=/home/people/emc/www/htdocs/users/verification/regional/mesoscale/dev/grid2grid/precip_maps/images/${PLOTDATE}
mkdir -p $PLOTMAPDIR
mv $PLOTDIR/*${PLOTDATE}* $PLOTMAPDIR

PLOTDIR=/home/people/emc/www/htdocs/users/verification/regional/mesoscale/dev/grid2grid/snowfall/images
VDATE=$(date -d "-2 days" +"%Y%m%d")
cd $PLOTDIR
rm -f *png
tar -xvf $EVSDIR/atmos.$VDATE/evs.plots.mesoscale.atmos.snowfall.v${VDATE}.tar


exit
