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
PRODUCT_DEVICE_PREFIX := cdma
PRODUCT_MODEL := XT875
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SFX := vzw
ANDROID_VERSION := 4.0.3_r1
#MOTOROLA_BUILD_ID := 5.5.1_84_DBN-71
MOTOROLA_BUILD_ID := IML74K
MOTOROLA_SOFTWARE_VERSION := 5.9.902
DEVELOPER_NAME := dhacker29
DEVELOPER_HOST := rombot.droidhive.com
DEVELOPMENT_STAGE := Beta
TARGET_BOOTANIMATION_NAME := vertical-540x960

# Release name and versioning
PRODUCT_RELEASE_NAME := DROID_BIONIC

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
ACT_DATE := $(shell date +%F/%R)

PRODUCT_BUILD_PROP_OVERRIDES += \
   BUILD_ID=${MOTOROLA_BUILD_ID} \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE} \
   TARGET_BUILD_TYPE=user \
   BUILD_VERSION_TAGS=release-keys \
   BUILD_DISPLAY_ID=ICS_${DEVELOPMENT_STAGE}_${MOTOROLA_BUILD_ID} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${ANDROID_VERSION}/${MOTOROLA_BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${ANDROID_VERSION} ${MOTOROLA_BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   USER=${DEVELOPER_NAME} \
   BUILD_HOST=${DEVELOPER_HOST} \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \
