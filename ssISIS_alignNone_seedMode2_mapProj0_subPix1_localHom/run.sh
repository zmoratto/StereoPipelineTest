#!/bin/bash

. "../shared-funcs.sh"
startup_cleanup

stereo $d/M0100115.cub $d/E0201461.cub $dir/$dir -s stereo.default --left-image-crop-win 0 1024 672 4864  --disparity-estimation-dem $d/ref-DEM.tif --disparity-estimation-dem-error 5 --alignment-method none --corr-seed-mode 2 --subpixel-mode 1 --use-local-homography
point2dem -r mars $dir/$dir-PC.tif --nodata-value -32767
