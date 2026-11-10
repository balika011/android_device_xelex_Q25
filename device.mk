#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xelex mt6789-common
$(call inherit-product, device/xelex/mt6789-common/common.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/touch_display.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/touch_display.idc \
    $(LOCAL_PATH)/configs/idc/bbqX0kbd.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/bbqX0kbd.idc \
    $(LOCAL_PATH)/configs/keylayout/bbqX0kbd.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/bbqX0kbd.kl \
    $(LOCAL_PATH)/configs/keychars/bbqX0kbd.kcm:$(TARGET_COPY_OUT_VENDOR)/usr/keychars/bbqX0kbd.kcm

# Overlays
PRODUCT_PACKAGES += \
    LineageSDKResDevice \
    SystemUIOverlayTarget

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xelex/Q25/Q25-vendor.mk)
