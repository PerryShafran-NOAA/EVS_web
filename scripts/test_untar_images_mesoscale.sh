#!/bin/bash

set -x

#EVSDIR=/home/people/emc/www/htdocs/users/verification/emc.vpppg/dev_tar_files/mesoscale
EVSDIR=/home/people/emc/www/htdocs/users/verification/regional/mesoscale/test/grid2obs/images
PLOTDIR=/home/people/emc/www/htdocs/users/verification/regional/mesoscale/test/grid2obs/images

#VDATE=$(date -d "-3 days" +"%Y%m%d")
VDATE=20241001

cd $PLOTDIR
rm -f *png
tar -xvf $EVSDIR/evs.plots.mesoscale.atmos.grid2obs.v${VDATE}.tar

exit

PLOTDIR=/home/people/emc/www/htdocs/users/verification/regional/mesoscale/test/grid2grid/precip/images

cd $PLOTDIR
rm -f *png
tar -xvf $EVSDIR/atmos.$VDATE/evs.plots.mesoscale.atmos.precip.v${VDATE}.tar

PLOTDATE=$(echo "$(ls ${PLOTDIR}/*.gif | tail -1)" | grep -oE '[0-9]{8}')
PLOTMAPDIR=/home/people/emc/www/htdocs/users/verification/regional/mesoscale/test/grid2grid/precip_maps/images/${PLOTDATE}
mkdir -p $PLOTMAPDIR
mv $PLOTDIR/*${PLOTDATE}* $PLOTMAPDIR

exit
