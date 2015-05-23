LOCAL_PATH := device/samsung/zeroltezt

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal7420
TARGET_NO_BOOTLOADER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := zeroltezt

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos7420

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-vBPRE

# Kernel
#KERNEL_TOOLCHAIN := /builds/cm-12.1/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin
#KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
#BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_BASE := 0x10000000
BOARD_MKBOOTIMG_ARGS := --dt $(LOCAL_PATH)/dt.img
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true
#TARGET_KERNEL_SOURCE := kernel/samsung/exynos7420
#TARGET_KERNEL_CONFIG := exynos7420-zerolte_tmo_defconfig
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernAl

TARGET_RECOVERY_INITRC := device/samsung/zeroltetmo/init.rc

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 24164353
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 35651584
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4110417920
BOARD_USERDATAIMAGE_PARTITION_SIZE := 123341897728
BOARD_FLASH_BLOCK_SIZE := 2048

# SELinux
BOARD_SEPOLICY_DIRS += \
	device/samsung/zeroltetmo/sepolicy

BOARD_SEPOLICY_UNION += \
	file_contexts \
	device.te \
	domain.te \
	drmserver.te \
	file.te \
	gpsd.te \
	init.te \
	mediaserver.te \
        service_contexts \
	servicemanager.te \
	system_app.te \
	system_server.te \
	vold.te \
	wpa.te

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.samsungexynos7420
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_SUPPRESS_SECURE_ERASE := true
ANDROID_COMMON_BUILD_MK := true

# TWRP
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/devices/13900000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_MTP_DEVICE := /dev/usb_mtp_gadget
TW_SCREEN_BLANK_ON_BOOT := true
