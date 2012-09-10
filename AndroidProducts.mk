PRODUCT_MAKEFILES := $(LOCAL_DIR)/full_targa.mk
ifeq ($(TARGET_PRODUCT),aokp_targa)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/aokp.mk
endif
