#!/bin/sh

cd po
for LANG in *
do
	echo "updating language file for ${LANG}"
	MDIR="../usr/share/locale/${LANG}/LC_MESSAGES/"
	mkdir -p ${MDIR}
	msgfmt -v -o ${MDIR}/lernstick-luks-prompt.mo ${LANG}/lernstick-luks-prompt.po
done
