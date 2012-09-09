# inherit from common
-include device/motorola/common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/targa/BoardConfigVendor.mk

# Processor
TARGET_BOOTLOADER_BOARD_NAME := targa

# Kernel
ifeq ($(BOARD_USES_KEXEC),true)
BOARD_KERNEL_CMDLINE := root=/dev/ram0 rw mem=1024M@0x80000000 console=ttyO2,115200n8 init=/init ip=off mmcparts=mmcblk1:p7(pds),p15(boot),p16(recovery),p17(cdrom),p18(misc),p19(cid),p20(kpanic),p21(system),p22(cache),p23(preinstall),p24(webtop),p25(userdata),p26(emstorage) mot_sst=1 androidboot.bootloader=0x0A72
else
BOARD_KERNEL_CMDLINE := omap_wdt.timer_margin=60 oops=panic console=/dev/null rw mem=1048572K@0x80000000 vram=10300K omapfb.vram=0:8256K,1:4K,2:2040K init=/init ip=off mmcparts=mmcblk1:p7(pds),p15(boot),p16(recovery),p17(cdrom),p18(misc),p19(cid),p20(kpanic),p21(system),p22(cache),p23(preinstall),p24(webtop),p25(userdata),p26(emstorage) androidboot.bootloader=0x0A72
endif
BOARD_KERNEL_BASE := 0x80000000
BOARD_PAGE_SIZE := 0x4096

# Kernel Build
ifeq ($(BOARD_USES_KEXEC),true)
TARGET_KERNEL_SOURCE := kernel/motorola/mapphone
TARGET_KERNEL_CONFIG := mapphone_targa_jb_defconfig
else
TARGET_KERNEL_SOURCE := kernel/motorola/omap4_xt912
TARGET_KERNEL_CONFIG := mapphone_defconfig
endif

# Recovery
BOARD_NONSAFE_SYSTEM_DEVICE := /dev/block/mmcblk1p21

BOARD_HAS_VIRTUAL_KEYS := true
BOARD_VIRTUAL_KEY_HEIGHT := 64
BOARD_MAX_TOUCH_X := 1024
BOARD_MAX_TOUCH_Y := 1024
