# Set this up here so that BoardVendorConfig.mk can override it
BOARD_USES_GENERIC_AUDIO := false

BOARD_USES_LIBSECRIL_STUB := true

# inherit from the proprietary version
-include vendor/samsung/galaxys4g/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_BOARD_PLATFORM := s5pv210
TARGET_BOOTLOADER_BOARD_NAME := galaxys4g
TARGET_RECOVERY_INITRC := device/samsung/galaxys4g/initramfs/recovery.rc

USE_CAMERA_STUB := true
# Provide our own libaudio
TARGET_PROVIDES_LIBAUDIO := true

BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 init=/init no_console_suspend loglevel=8
BOARD_KERNEL_BASE := 0x30000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000

# cat /proc/LinuStoreIII/bmlinfo
# FSR VERSION: FSR_1.2.1p1_b139_RTM
# minor       position           size     units       id
#    1: 0x00000000-0x00040000 0x00040000      1        0
#    2: 0x00040000-0x00080000 0x00040000      1        1
#    3: 0x00080000-0x00a80000 0x00a00000     40       20
#    4: 0x00a80000-0x00bc0000 0x00140000      5        3
#    5: 0x00bc0000-0x00d00000 0x00140000      5        4
#    6: 0x00d00000-0x01200000 0x00500000     20       21
#    7: 0x01200000-0x01980000 0x00780000     30        6
#    8: 0x01980000-0x02100000 0x00780000     30        7
#    9: 0x02100000-0x1a200000 0x18100000   1540       22
#   10: 0x1a200000-0x3b400000 0x21200000   2120       23
#   11: 0x3b400000-0x3dc00000 0x02800000    160       24
#   12: 0x3dc00000-0x3eb00000 0x00f00000     60       11


# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 7864320
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 403701760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 555745280
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/samsung/galaxys4g/kernel

BOARD_BML_BOOT := /dev/block/bml7
BOARD_BOOT_DEVICE := /dev/block/bml7
BOARD_BOOTIMAGE_PARTITION := /dev/block/bml7
BOARD_BML_RECOVERY := /dev/block/bml8
BOARD_RECOVERY_DEVICE := /dev/block/bml8
BOARD_RECOVERYIMAGE_PARTITION := /dev/block/bml8
 
BOARD_DATA_DEVICE := /dev/block/stl10
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/stl9
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/stl11
BOARD_CACHE_FILESYSTEM := ext4
BOARD_HAS_NO_MISC_PARTITION := true

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p1
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_BML_OVER_MTD := true

TARGET_OTA_ASSERT_DEVICE := galaxys4g,SGH-T959V
