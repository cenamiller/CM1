#!/usr/bin/env bash

set -ex

#----------------------------------------------------------------------------
# environment
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${SCRIPTDIR}/build_common.cfg || { echo "cannot locate ${SCRIPTDIR}/build_common.cfg!!"; exit 1; }
#----------------------------------------------------------------------------

cd run

NUM_PROCS="${1:-${NUM_PROCS:-1}}"

echo "running CM1 in $(pwd)"



mpirun -n ${NUM_PROCS} cm1.exe namelist.input

