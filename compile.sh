#Create defconfig
#make ARCH=arm tenderloin_android_defconfig
#echo "defconfig complete"

#Build kernel using arm-eabi-4.4.3 toolchain
#make ARCH=arm -j16 CROSS_COMPILE=~/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- uImage
#echo "build complete"

#Build kernel using Linaro toolchain
make ARCH=arm -j16 CROSS_COMPILE=arm-linux-gnueabi- uImage
#echo "build complete"
