#!/bin/sh

set -e

image="cdituri/pandoc-htmldocs"

# Builds the cdituri/pandoc-htmldocs docker image

build_container() {

    cwd=$(pwd)

    gitroot=$(git rev-parse --show-toplevel)

    cd $gitroot/src

    docker build -t $image .

    cd $cwd

}

build_container

exit 0
