# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from pokerp device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := pokerp
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_pokerp
PRODUCT_MODEL := moto e(6) plus

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := pokerp_64
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_p161bn-user 9 PTBS29.401-58-8 58-8 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/pokerp_64/pokerp:9/PTBS29.401-58-8/58-8:user/release-keys
