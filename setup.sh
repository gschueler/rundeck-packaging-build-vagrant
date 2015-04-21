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

apt-get update
# Install the JRE
apt-get -y install openjdk-7-jdk
apt-get -y install curl git groovy rpm make zip unzip
