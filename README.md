omni-twrp_device_pantech_IM-A860
=========================

Omni device Only for compile TWRP, pantech IM-A860 ( ef51l ef51s ef51k ) 

Setting up a minimal tree for building TWRP

Android 6.0 branch

To initialize the main repository:

repo init -u https://github.com/marduk191/recovery_manifest.git -b zhuowei-android-6.0
Then add any recovery/device trees/kernels you need to a file (one XML for each device) and add them to the .repo/local_manifests folder of your initialized repo folder.

Once added:

repo sync
Done

To build recovery:

. build/envsetup.sh
lunch (device name)
make installclean
time make recoveryimage