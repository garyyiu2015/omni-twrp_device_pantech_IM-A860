# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8960
TARGET_NO_BOOTLOADER := true

#Platform
TARGET_BOARD_PLATFORM := msm8960
#TARGET_BOARD_PLATFORM_GPU := qcom-adreno320

# CPU
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true


#-------------------------------------------------------------------------------------------------
# Kernel
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 loglevel=0 vmalloc=0x16000000 maxcpus=2 androidboot.selinux=permissive
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef51s/kernel
TARGET_PREBUILT_KERNEL := device/pantech/ef51s/kernel
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel

# Recovery
BOARD_HAS_NO_SELECT_BUTTON  := true
BOARD_SUPPRESS_EMMC_WIPE    := true
BOARD_HAS_LARGE_FILESYSTEM  := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_RECOVERY_SWIPE := true
RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_FSTAB := device/pantech/ef51s/ramdisk/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

#TWRP config
DEVICE_RESOLUTION := 1080x1920
TW_NO_SCREEN_BLANK := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_THEME := portrait_hdpi
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXTERNAL_STORAGE_PATH := "/otg_storage"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "otg_storage"

TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
TW_NO_USB_STORAGE := false

TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true

SP1_NAME := "modem"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0
SP2_NAME := "rawdata"
SP2_BACKUP_METHOD := image
SP2_MOUNTABLE := 0

#cofface config
RECOVERY_VARIANT := twrp
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
