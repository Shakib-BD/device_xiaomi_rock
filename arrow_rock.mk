#
# Copyright (C) 2023 LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/rock/device.mk)

# Inherit some common arrow stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Bootanimation Res
TARGET_BOOT_ANIMATION_RES := 1080

# ArrowOS additions
DEVICE_MAINTAINER := Shakib (@Shakib_BD)

# Pixel Charger
TARGET_INCLUDE_PIXEL_CHARGER := true

# ArrowOS Gapps Flag
ARROW_GAPPS := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rock
PRODUCT_NAME := arrow_rock
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22071219AI
PRODUCT_MANUFACTURER := xiaomi

# Fingerprints Info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="stone_p_global-user 13 TP1A.220624.014 V14.0.5.0.TLUIDXM release-keys"

BUILD_FINGERPRINT := POCO/stone_p_id/stone:13/TP1A.220624.014/V14.0.5.0.TLUIDXM:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
