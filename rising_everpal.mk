#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit from everpal device
$(call inherit-product, device/xiaomi/everpal/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_everpal
PRODUCT_DEVICE := everpal
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := everpal

# RisingOS flags
RISING_CHIPSET := "MT6833P"
RISING_MAINTAINER := "Weaponmasterjax"
RISING_BATTERY := 5000mah
TARGET_CORE_GMS := true
TARGET_ENABLE_BLUR := true

# GMS build flags
WITH_GMS := true

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
