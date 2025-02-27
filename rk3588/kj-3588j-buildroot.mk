CMD=`realpath $BASH_SOURCE`
CUR_DIR=`dirname $CMD`

source $CUR_DIR/BoardConfig-rk3588-kj.mk

# Kernel defconfig fragment
# export RK_KERNEL_DEFCONFIG_FRAGMENT="$RK_KERNEL_DEFCONFIG_FRAGMENT firefly-linux.config"
export RK_KERNEL_DEFCONFIG=openeuler_rk3588_defconfig

# Uboot_defconfig_fragment
export RK_UBOOT_DEFCONFIG_FRAGMENT=firefly-linux.config

# parameter for GPT table
export RK_PARAMETER=parameter-2k.txt

# Kernel dts
export RK_KERNEL_DTS=rk3588-firefly-itx-3588j

# Set userdata partition type
export RK_USERDATA_FS_TYPE=ext4

# Set extboot
export FF_EXTBOOT=true

export FF_EXTBOOT_SIZE=256M

# PRODUCT MODEL
export RK_PRODUCT_MODEL=ITX_3588J

# recovery ramdisk
# export RK_RECOVERY_RAMDISK=rk3588-recovery-arm64.cpio.gz

# Recovery config
export RK_CFG_RECOVERY=firefly_rk3588_kj

# export RK_RAMBOOT_TYPE=ROMFS

# Buildroot config
export RK_CFG_BUILDROOT=firefly_rk3588

export RK_EXTRA_PARTITIONS=

# packagefile for make update image
export RK_PACKAGE_FILE=rk3588-ubuntu-package-file
