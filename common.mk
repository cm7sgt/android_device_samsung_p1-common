
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=200 \
    ro.sf.hwrotation=90 \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=20 \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=48m

# use /data/dalvik-cache for system dalvik cache since /cache is only 30MB
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# For GPS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.gps.soket = /data/gpspipe

# Galaxy Tab uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# For RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=samsung

DEVICE_PACKAGE_OVERLAYS += device/samsung/p1-common/overlay

# These are the OpenMAX IL configuration files
PRODUCT_COPY_FILES += \
    device/samsung/aries-common/sec_mm/sec_omx/sec_omx_core/secomxregistry:system/etc/secomxregistry \
    device/samsung/p1-common/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# These are the OpenMAX IL modules
PRODUCT_PACKAGES += \
    libSEC_OMX_Core.aries \
    libOMX.SEC.AVC.Decoder.aries \
    libOMX.SEC.M4V.Decoder.aries \
    libOMX.SEC.M4V.Encoder.aries \
    libOMX.SEC.AVC.Encoder.aries \
    libstagefrighthw

PRODUCT_PACKAGES += \
    setup_fs \
    bmlwrite \
    libaudio

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

PRODUCT_COPY_FILES += \
    device/samsung/p1-common/prebuilt/usr/keylayout/p1_keyboard.kl:system/usr/keylayout/p1_keyboard.kl \
    device/samsung/p1-common/prebuilt/usr/keylayout/AT42QT602240_Touchscreen.kl:system/usr/keylayout/AT42QT602240_Touchscreen.kl

PRODUCT_COPY_FILES += \
    device/samsung/p1-common/prebuilt/mke2fs:utilities/mke2fs

# common init.rc / hw specific version is in respective device trees
PRODUCT_COPY_FILES += \
    device/samsung/p1-common/initramfs/init.rc:root/init.rc

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/p1-common/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wpa_supplicant.conf
