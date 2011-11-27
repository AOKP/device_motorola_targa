$(call inherit-product, device/motorola/targa/device_targa.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=targa_vzw BUILD_ID=5.5.1_84_DBN-62_MR-11 BUILD_FINGERPRINT=verizon/targa_vzw/cdma_targa:2.3.4/5.5.1_84_DBN-62_MR-11/111028:user/release-keys

PRODUCT_NAME := cm_targa
PRODUCT_DEVICE := targa
