
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/ingenic/newton/newton2_plus_base.mk)
# Inherit from those products. Most specific first.
$(call inherit-product, device/ingenic/newton/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := newton2_plus
PRODUCT_DEVICE := newton
PRODUCT_BRAND := Ingenic
PRODUCT_MODEL := newton2_plus
PRODUCT_MANUFACTURER := Ingenic
PRODUCT_CHARACTERISTICS := tablet

#OTA RADIO
INSTALLED_RADIOIMAGE_TARGET += \
        $(PRODUCT_OUT)/boot.img \
        $(PRODUCT_OUT)/recovery.img \
        $(PRODUCT_OUT)/u-boot-with-spl-mbr-gpt.bin

# Iwds support
BOARD_SUPPORT_IWDS := true

# debug tools
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/busybox:/system/bin/busybox

# fonts
PRODUCT_COPY_FILES += \
    frameworks/base/data/fonts/system_fonts.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/system_fonts.xml \
    frameworks/base/data/fonts/fallback_fonts.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/fallback_fonts.xml \
    frameworks/base/data/fonts/fonts.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/fonts.xml

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/ingenic/newton/bluetooth
