# Declare Variables
now=$(date +"%m_%d_%Y_%H_%M")

#Copy output to moboot folder
cp ~/android/kernel/hp-kernel-tenderloin/arch/arm/boot/uImage ~/android/kernel/moboot/tools/uImage
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
zip -f cm_kernel_tenderloin.zip boot.img

#Create new build date
cp cm_kernel_tenderloin.zip ~/Dropbox/cm_kernel_tenderloin_$now.zip
echo "Finished"
