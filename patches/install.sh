#!/bin/sh
rootdirectory="$PWD"
dirs="frameworks/av system/core"

for dir in $dirs; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/xiaomi/hermes/patches/$dir/*.patch
done

echo "Done!"
cd $rootdirectory
