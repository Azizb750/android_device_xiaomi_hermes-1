PRODUCT_RELEASE_NAME := hermes

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := hermes
PRODUCT_NAME := omni_hermes
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 2
PRODUCT_MANUFACTURER := Xiaomi

ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
BUILD_FINGERPRINT := "Xiaomi/hermes/hermes:5.0.2/LRX22G/V9.6.3.0.LHMMIFD:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="hermes-user 5.0.2 LRX22G V9.6.3.0.LHMMIFD release-keys"
endif
