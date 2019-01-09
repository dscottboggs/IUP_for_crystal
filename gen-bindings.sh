#!/bin/sh
set -eux

IUP_INCLUDE_DIR=${IUP_INCLUDE_DIR:-$PWD/ext/include}
LIB_NAME=${LIB_NAME:-LibIUP}
PARENT_MODULE=${PARENT_MODULE:-IUP}
DEST=${DEST:-src/lib/iup.cr}

# doesn't output the correct values but when run normally it works.. run the command instead

exit 0


mkdir -p `dirname $DEST`
./autobind \
  -I$IUP_INCLUDE_DIR \
  --lib-name=$LIB_NAME \
  --parent-module=$PARENT_MODULE \
    ${IUP_INCLUDE_DIR}/iup.h > $DEST
