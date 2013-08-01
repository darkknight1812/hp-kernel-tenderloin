# Declare Variables
now=$(date +"%m_%d_%Y_%H_%M")

#Change directory to working directory
#cd ~/android/kernel/hp-kernel-tenderloin

#Create defconfig
#make ARCH=arm tenderloin_android_defconfig
#echo "defconfig complete"

#Build kernel using arm-eabi-4.4.3 toolchain
#make ARCH=arm -j16 CROSS_COMPILE=~/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- uImage

#Build kernel using Linaro toolchain
make ARCH=arm -j16 CROSS_COMPILE=arm-linux-gnueabi- uImage
#echo "build complete"

#Copy output to moboot folder
cp ~/android/kernel/uv/hp-kernel-tenderloin/arch/arm/boot/uImage ~/android/kernel/moboot/tools/uImage
echo "Coppied"

#Change directory to working directory
cd ~/android/kernel/moboot/tools

#Make an uimage
mkimage -A arm -O linux -T ramdisk -C none -a 0x60000000 -e 0x60000000 -n "Image" -d ramdisk.img uRamdisk
echo "Ramdisk Complete"
mkimage -A arm -O linux -T multi -a 0x40208000  -e  0x40208000 -C none -n "multi image" -d uImage:uRamdisk  uImage.CyanogenMod.new
echo "Uimage Complete"

#Copy the uimage into boot.img
cp -f uImage.CyanogenMod.new boot.img

#Use the existing zip containter to create a flashable zip
zip -f cm_kernel_tenderloin_uv.zip boot.img

#Create new build date
cp cm_kernel_tenderloin_uv.zip ~/Dropbox/cm_kernel_tenderloin_uv_$now.zip
echo "Finished"
