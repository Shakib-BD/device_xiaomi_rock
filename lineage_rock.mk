#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rock device
$(call inherit-product, device/xiaomi/rock/device.mk)

# Disable Eppe
TARGET_DISABLE_EPPE := true

PRODUCT_DEVICE := rock
PRODUCT_NAME := lineage_rock
PRODUCT_BRAND := Poco
PRODUCT_MODEL := Poco M5
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi_phone_global_ext4-user 14 UP1A.231005.007 V816.0.7.0.ULUIDXM release-keys" \
    BuildFingerprint=POCO/stone_p_global/stone:14/UP1A.231005.007/V816.0.7.0.ULUIDXM:user/release-keys
