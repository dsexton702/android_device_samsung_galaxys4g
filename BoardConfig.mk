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
TARGET_RECOVERY_INITRC := device/samsung/galaxys4g/recovery.rc

USE_CAMERA_STUB := true

BOARD_KERNEL_CMDLINE := console=ttySAC2 init=/init no_console_suspend loglevel=8
BOARD_KERNEL_BASE := 0x32000000
BOARD_PAGE_SIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 7864320
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 4718592
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 196608000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 541589504
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/samsung/galaxys4g/kernel

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p1
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_BML_OVER_MTD := true

TARGET_OTA_ASSERT_DEVICE := galaxys4g,SGH-T959V
