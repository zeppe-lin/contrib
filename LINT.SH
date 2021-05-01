#!/bin/sh
#
# contrib/LINT.SH: Find missing dependencies for contrib pkgsrc collection.
#

find . -name Pkgfile -exec dirname {} \; | sed 's/.\///g' | \
while read p; do
	pkgman  --root=/dev/null \
		--no-std-config \
		--config-append="pkgsrcdir $PWD" \
		--config-append="pkgsrcdir $PWD/../opt" \
		--config-append="pkgsrcdir $PWD/../core" \
		--config-append="pkgsrcdir $PWD/../xorg" \
		dep --all --recursive $p | \
		awk -v p=$p '/not found/{print p":"$1}'
done

# End of file.
