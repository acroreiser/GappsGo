GappsGo - a gapps package for Android 11 Go

Taken from Nokia 1 Plus firmware dump
Build id: Antman_00WW-user 11 RP1A.200720.011 00WW_3_020 release-keys

Additionally:
* Fixed GoogleWallpaper permissions for ROMs with enforced priv-app permissions
* Added GoogleCameraGo
* Added Google Translate with drawing over other apps permission granted (to allow Fast Translation feature on Android Go)
* Added Turbo app

Originally intended to use with Lineage Go 18.1 builds for Lenovo A6010/A6000 but useful for other legacy or Go devices like Nexus 4 "mako" (https://forum.xda-developers.com/t/rom-unofficial-lineageos-16-0-mako.3758779/post-85297647).

To build default package (for a6010), run:

$ ./make_gapps.sh default

To build package for another device, run the script with an "market device name", "device codename" and "system partition block device" arguments:

$ ./make_gapps.sh "Samsung Galaxy S3" "i9300" "/dev/block/mmcblk0p9"
