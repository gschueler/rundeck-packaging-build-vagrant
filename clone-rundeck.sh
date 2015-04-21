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

URL=$1
DIR=$2

git clone $URL $DIR