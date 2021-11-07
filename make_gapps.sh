#!/bin/bash

if [ "$1" != "clean" ] && [ "$1" != "make" ]; then
		echo "Usage: ./make_gapps.sh [make|clean]";
		exit 1;
fi

if [ "$1" == "clean" ]; then
	rm META-INF/com/google/android/update-binary;
	rm *.zip;
	echo "Cleaned up!";
	exit 0;
fi

cat update-binary | sed s@"###TARGET_DEVICE_DISP###"@"TARGET_DEVICE_DISP=\"$DISP\""@ > META-INF/com/google/android/update-binary;
sed -i s@"###PACKAGER###"@"$(whoami)"@ META-INF/com/google/android/update-binary;

zip -r9 gapps_go-arm-11.0-$(date '+%Y%m%d').zip META-INF system unzip;
