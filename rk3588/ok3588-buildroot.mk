CMD=`realpath $BASH_SOURCE`
CUR_DIR=`dirname $CMD`

source $CUR_DIR/BoardConfig.mk

export RK_ARCH=arm64
export RK_KERNEL_ARCH=arm64
export RK_ROOTFS_SYSTEM=linuxfs
# Kernel defconfig fragment

export RK_UBOOT_DEFCONFIG=rk3588
# Uboot image format type: fit(flattened image tree)
export RK_UBOOT_FORMAT_TYPE=fit

export RK_UBOOT_DEFCONFIG_FRAGMENT=firefly-linux.config

export RK_KERNEL_DEFCONFIG_FRAGMENT=

export RK_KERNEL_DEFCONFIG=rockchip_linux_defconfig

export RK_KERNEL_DTS=OK3588-C-Linux

# parameter for GPT table
export RK_PARAMETER=parameter-ok3588.txt

#SPL_CONFIG
export RK_SPL_INI_CONFIG=RK3588_115200MINIALL.ini

# Set userdata partition type
export RK_USERDATA_FS_TYPE=ext4

# Set extboot
export FF_EXTBOOT=true

export FF_EXTBOOT_SIZE=64M

# PRODUCT MODEL
# export RK_PRODUCT_MODEL=AIBOX-3588

# recovery ramdisk
export RK_RECOVERY_RAMDISK=rk3588-recovery-arm64.cpio.gz

# Recovery config
#export RK_CFG_RECOVERY=rockchip_rk3588_recovery_defconfig
export RK_CFG_RECOVERY=firefly_rk3588

# Buildroot config
export RK_CFG_BUILDROOT=firefly_rk3588

export RK_EXTRA_PARTITIONS=

# packagefile for make update image
export RK_PACKAGE_FILE=rk3588-ubuntu-package-file
