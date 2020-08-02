#!/bin/sh

set -e

image="cdituri/pandoc-htmldocs"

# Builds documentation in the current working directory using
# cdituri/pandoc-htmldocs docker image

build_docs() {

    docker run --rm -v "$(pwd):/src/" $image

}

build_docs

exit 0
