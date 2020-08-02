#!/bin/sh

set -e

configfile="build.docs.json"

check_config() {

  if [ ! -f $configfile ]; then

    echo "File $configfile not found"

    exit 4

  fi

}

compile_markdown() {

  flags="-s --toc"

  inputs="-i $(jq '.[]' $configfile | xargs)"

  headers="-H /app/pandoc.css"

  eval "pandoc ${flags} ${headers} ${inputs}"

}

check_config

compile_markdown

exit 0
