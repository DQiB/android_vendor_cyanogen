# Inherit AOSP device configuration for blade.
$(call inherit-product, device/samsung/gio/device_gio.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_gio
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gio
PRODUCT_MODEL := GT-S5660
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=gio BUILD_ID=GRWK74 BUILD_FINGERPRINT=samsung/GT-S5660/GT-S5660:2.3.5/GINGERBREAD/XXKS2:user/test-keys PRIVATE_BUILD_DESC="GT-S5660-user 2.3.5 GINGERBREAD XXKS2 test-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := gio
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
