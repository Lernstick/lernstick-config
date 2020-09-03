xgettext -L Shell --from-code UTF-8 --add-comments=## lib/live/boot/*
sed -i "s/charset=CHARSET/charset=UTF-8/g" messages.po
cd po; for i in *; do cd $i; msgmerge -U lernstick-luks-prompt.po ../../messages.po; cd ..; done; cd ..
vi po/*/lernstick-luks-prompt.po
