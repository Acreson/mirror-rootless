#!/bin/sh

dpkg-scanpackages -m ./debs > Packages
rm -r -f /Users/acreson/Desktop/mirror-rootless/Packages.bz2
bzip2 Packages
dpkg-scanpackages -m ./debs > Packages
