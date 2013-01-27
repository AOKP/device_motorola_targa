# inherit from common
-include device/motorola/omap4-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/targa/BoardConfigVendor.mk

# Processor
TARGET_BOOTLOADER_BOARD_NAME := targa

# Kernel
BOARD_KERNEL_CMDLINE := omap_wdt.timer_margin=60 oops=panic console=/dev/null rw mem=1048572K@0x80000000 vram=10300K omapfb.vram=0:8256K,1:4K,2:2040K init=/init ip=off mmcparts=mmcblk1:p7(pds),p15(boot),p16(recovery),p17(cdrom),p18(misc),p19(cid),p20(kpanic),p21(system),p22(cache),p23(preinstall),p24(webtop),p25(userdata),p26(emstorage) androidboot.bootloader=0x0A72
BOARD_KERNEL_BASE := 0x80000000
BOARD_PAGE_SIZE := 0x4096
