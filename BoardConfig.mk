LOCAL_PATH := device/xiaomi/hermes

# Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6795
TARGET_BOARD_PLATFORM := mt6795
TARGET_NO_BOOTLOADER := true
TARGET_IS_64_BIT := true

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
-TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
ifeq ($(TARGET_BUILD_VARIANT),user)
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
else
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
endif
BOARD_MKBOOTIMG_ARGS := \
    --base 0x40078000 \
    --board mt6795 \
    --kernel_offset 0x00008000 \
    --pagesize 2048 \
    --ramdisk_offset 0x03f88000 \
    --second_offset 0x00e88000 \
    --tags_offset 0x0df88000

# Partitons
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12737560576
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_CACHEIMAGE_PARTITION_SIZE := 629145600
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEVICE_VERSION := Dinolek
TW_INCLUDE_NTFS_3G := true
TW_THEME := portrait_hdpi
TW_NO_EXFAT_FUSE := true


# Sepolicy
BOARD_SEPOLICY_DIRS += device/xiaomi/hermes/sepolicy
POLICYVERS := 28

# Build kernel without kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
$(shell mkdir -p $(OUT)/recovery/root)
