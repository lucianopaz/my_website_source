#!/usr/bin/env bash

set -ex

FILEDIR=$(dirname "$1")
FILENAME=$(basename -- "$1")
EXTENSION="${FILENAME##*.}"
FILENAME="${FILENAME%.*}"

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
SOURCEDIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

jupyter nbconvert --to markdown $FILEDIR/$FILENAME.$EXTENSION
cat $FILEDIR/$FILENAMEe.md | sed -i "s/\!\[png\](/\!\[png\](\//g" $FILEDIR/$FILENAME.md
mv $FILEDIR/${FILENAME}_files $SOURCEDIR/../static/


