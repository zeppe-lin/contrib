#!/bin/sh
# apktool wrapper

jarpath="/usr/share/apktool/apktool.jar"
javaOpts="-Xmx512M -Dfile.encoding=utf-8"

exec java $javaOpts -jar "$jarpath" "$@"

# End of file
