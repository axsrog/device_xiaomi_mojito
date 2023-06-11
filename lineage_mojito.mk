#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

PRODUCT_DEVICE := mojito
PRODUCT_NAME := lineage_mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := mojito
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mojito-user 12 RKQ1.210614.002 V14.0.3.0.SKGMIXM release-keys"

BUILD_FINGERPRINT := Redmi/mojito/mojito:12/RKQ1.210614.002/V14.0.3.0.SKGMIXM:user/release-keys
