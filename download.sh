#!/bin/sh
. $(dirname $0)/path.sh

if [ -f ${PACKAGE}-${VERSION_BASE}.orig.tar.gz ]; then
  exit 127
fi
NAME="hubbardi"

wget https://github.com/TRIQS/${NAME}/releases/download/${VERSION_BASE}/${NAME}-${VERSION_BASE}.tar.gz
mkdir ${PACKAGE}-${VERSION_BASE}
tar zxvf ${NAME}-${VERSION_BASE}.tar.gz -C ${PACKAGE}-${VERSION_BASE} --strip-component=1
tar zcvf ${PACKAGE}_${VERSION_BASE}.orig.tar.gz ${PACKAGE}-${VERSION_BASE}
rm -rf ${PACKAGE}-${VERSION_BASE} ${NAME}-${VERSION_BASE}.tar.gz
