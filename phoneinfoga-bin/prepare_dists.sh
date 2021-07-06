#!/bin/sh -ex

source $PWD/Pkgfile

# get the releases
for arch in arm64 armv6 i386 x86_64; do
	curl -LO https://github.com/sundowndev/phoneinfoga/releases/download/v$version/PhoneInfoga_Linux_$arch.tar.gz
	mv PhoneInfoga_Linux_$arch.tar.gz phoneinfoga-bin-v$version-$arch.tar.gz
done

# End of file.
