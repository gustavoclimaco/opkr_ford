#!/usr/bin/bash

export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1
export NUMEXPR_NUM_THREADS=1
export OPENBLAS_NUM_THREADS=1
export VECLIB_MAXIMUM_THREADS=1

if [ -z "$AGNOS_VERSION" ]; then
  export AGNOS_VERSION="8.2"
fi

if [ -z "$PASSIVE" ]; then
  export PASSIVE="1"
fi

export STAGING_ROOT="/data/safe_staging"

if [ -f "/data/params/d/MapboxToken" ]; then
  export MAPBOX_TOKEN=$(cat /data/params/d/MapboxToken)
fi

export FINGERPRINT="MAVERICK_MK1"