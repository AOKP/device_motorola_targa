# Inherit device configuration for Droid Bionic.
$(call inherit-product, device/motorola/targa/device_targa.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_targa
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := targa
PRODUCT_MODEL := XT875
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SFX := vzw

# Release name and versioning
PRODUCT_RELEASE_NAME := DROID_BIONIC

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   BUILD_ID=5.5.1_84_D3G-55 \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=cdma_targa \
   BUILD_DISPLAY_ID=5.5.1_84_DBN-62_MR-11 \
   BUILD_FINGERPRINT=verizon/targa_vzw/cdma_targa:4.0.1/5.5.1_84_DBN-62_MR-11/${BUILD_NUMBER}:user/release-keys \
   PRIVATE_BUILD_DESC="cdma_targa-user 4.0.1 5.5.1_84_DBN-62_MR-11 111028 "${BUILD_NUMBER}" release-keys" \
   PRODUCT_BRAND=verizon \
   BUILD_UTC_DATE= \
   TARGET_BUILD_TYPE=user \
   BUILD_VERSION_TAGS=release-keys \
   USER=dhacker29 \
   BUILD_HOST=TH3ORYROM-BUILDBOX \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \

# Extra Droid_Bionic overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/targa
