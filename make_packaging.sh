#!/usr/bin/env bash

die() {
   [[ $# -gt 1 ]] && { 
            exit_status=$1
        shift        
    }
    printf >&2 "ERROR: $*\n"

    exit ${exit_status:-1}
}

#trap 'die $? "*** bootstrap failed. ***"' ERR

set -o nounset -o pipefail

DIR=$1

cd $DIR/packaging
export BUILD_NUMBER=${2:-1}
make clean
make rpm deb
