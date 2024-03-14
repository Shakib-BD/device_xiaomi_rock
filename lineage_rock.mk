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

# Inherit some common RisingOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# GMS
WITH_GMS := true

# Rising OSS
RISING_MAINTAINER := RockDev
RISING_CHIPSET := MT6789
RISING_BATTERY := 5000mAh
RISING_DISPLAY := 1080x2408

# Extras
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
USE_PIXEL_CHARGER := true
TARGET_CORE_GMS := true
TARGET_ENABLE_BLUR := true

# Device Platform
PRODUCT_DEVICE := rock
PRODUCT_NAME := rising_rock
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 22071219CG
PRODUCT_MANUFACTURER := xiaomi

BUILD_FINGERPRINT := POCO/stone_p_id/stone:13/TP1A.220624.014/V816.0.1.0.TLUIDXM:user/release-keys
PRIVATE_BUILD_DESC="stone_p_global-user 13 TP1A.220624.014 V816.0.1.0.TLUIDXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
