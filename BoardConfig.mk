# Sandbox Setup: ON  ** IF YOU ARE USING THIS AND DON'T KNOW WHAT THAT MEANS: BEWARE **
# [HASH] I like how cvpcs grouped his settings, using that!


# Camera
USE_CAMERA_STUB := false
BOARD_USES_TI_CAMERA_HAL := true
BOARD_USE_LEGACY_TOUCHSCREEN := true

# inherit from the proprietary version
#-include vendor/motorola/targa/BoardConfigVendor.mk


# Processor
TARGET_NO_BOOTLOADER := false
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := targa
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
NEEDS_ARM_ERRATA_754319_754320 := true
TARGET_GLOBAL_CFLAGS += -DNEEDS_ARM_ERRATA_754319_754320


# Kernel
TARGET_PREBUILT_KERNEL := device/motorola/targa/kernel
BOARD_KERNEL_CMDLINE := console=/dev/null rw mem=512M@0x80000000 vram=20M omapgpu.vram=0:4M,1:16M,2:16MT init=/init ip=off brdrev=P2B omap3_die_id androidboot.bootloader=0x0000 mmcparts=mmcblk1:p7(pds),p15(boot),p16(recovery),p17(cdrom),p18(misc),p19(cid),p20(kpanic),p21(system),p22(cache),p23(preinstall),p24(userdata),p25(emstorage)
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x4096


# Storage


# Connectivity - Wi-Fi
#BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
#WPA_SUPPLICANT_VERSION      := VER_0_6_X
#HOSTAPD_VERSION             := VER_0_6_X
#BOARD_WLAN_DEVICE           := wl1283
#BOARD_SOFTAP_DEVICE         := wl1283
#BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/wilink_6_1
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
#WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
#WIFI_DRIVER_MODULE_ARG      := ""
#WIFI_FIRMWARE_LOADER        := "wlan_loader"
#WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/fw_wlan1283.bin"
#WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/fw_wlan1283_AP.bin"


# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
HAVE_2_3_DSP := 1


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true


# Recovery
BUILD_BOOTMENU_STANDALONE := true
BOARD_HAS_LOCKED_BOOTLOADER := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/motorola/targa/recovery-kernel
#BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/targa/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_ALWAYS_INSECURE := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_MKE2FS := device/motorola/targa/releaseutils/mke2fs
BOARD_NONSAFE_SYSTEM_DEVICE := /dev/block/mmcblk1p21
BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_HAS_SDEXT := false
#BOARD_HAS_WEBTOP := false

TARGET_RECOVERY_PRE_COMMAND := "echo 1 > /data/.recovery_mode; sync;"
TARGET_RECOVERY_PRE_COMMAND_CLEAR_REASON := true


# Sandbox Filesystem Settings
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk1p23
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime
BOARD_SYSTEM_FILESYSTEM := ext3


# Graphics
BOARD_EGL_CFG := device/motorola/targa/prebuilt/etc/egl.cfg
# strip GRALLOC_USAGE_HW_COMPOSER from gralloc alloc
BOARD_EGL_GRALLOC_USAGE_FILTER := 0x00000800
BOARD_GL_OES_EGL_IMG_EXTERNAL_HACK := true
ifdef BOARD_GL_OES_EGL_IMG_EXTERNAL_HACK
COMMON_GLOBAL_CFLAGS += -DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK
endif

# OMX
HARDWARE_OMX := true
ifdef HARDWARE_OMX
OMX_VENDOR := ti
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif


# OMAP
OMAP_ENHANCEMENT := true
ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif


# MOTOROLA
USE_MOTOROLA_CODE := true
ifdef USE_MOTOROLA_CODE
COMMON_GLOBAL_CFLAGS += -DUSE_MOTOROLA_CODE
endif
USE_MOTOROLA_USERS := true
ifdef USE_MOTOROLA_USERS
COMMON_GLOBAL_CFLAGS += -DUSE_MOTOROLA_USERS
endif


# Media / Radio
BUILD_FM_RADIO := true
BUILD_TI_FM_APPS := true
FM_CHR_DEV_ST := true
#PV_PLAYER := 
#BOARD_HW_PLAYER :=

# Use this define to set the FM radio stream to 8 instead of 10
HAS_FMSTREAM_ON8 := true
ifdef HAS_FMSTREAM_ON8
COMMON_GLOBAL_CFLAGS += -DHAS_FMSTREAM_ON8
endif

# OTA Packaging
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/motorola/targa/releasetools/targa_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/motorola/targa/releasetools/targa_img_from_target_files


# Hijack
TARGET_NEEDS_MOTOROLA_HIJACK := true
#BOARD_HIJACK_LOG_ENABLE := true


# Misc.
BOARD_USE_BATTERY_CHARGE_COUNTER := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_NEEDS_CUTILS_LOG := true

targa_HARDWARE := true
BOARD_GLOBAL_CFLAGS += -Dtarga_HARDWARE

