PRODUCT_MAKEFILES := $(LOCAL_DIR)/full_targa.mk
ifeq ($(TARGET_PRODUCT),aokp_targa)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/aokp.mk
endif
ifeq ($(TARGET_PRODUCT),cna_targa)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cna.mk
endif
ifeq ($(TARGET_PRODUCT),killrom_targa)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/killrom.mk
endif
