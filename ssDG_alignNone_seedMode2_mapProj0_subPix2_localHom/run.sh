#!/bin/bash

. "../shared-funcs.sh"
startup_cleanup

stereo $d/WV01_11JAN131652222-P1BS-10200100104A0300_sub8.tif $d/WV01_11JAN131653180-P1BS-1020010011862E00_sub8.tif $d/WV01_11JAN131652222-P1BS-10200100104A0300_sub8.xml $d/WV01_11JAN131653180-P1BS-1020010011862E00_sub8.xml run/run -s stereo.default -t dg --disable-fill-holes --left-image-crop-win 2048 2048 800 800 --disparity-estimation-dem $d/krigged_dem_nsidc_ndv0_fill.tif --disparity-estimation-dem-error 5 --alignment-method none --corr-seed-mode 2 --subpixel-mode 2 --use-local-homography
point2dem -r Earth $dir/$dir-PC.tif --nodata-value -32767
