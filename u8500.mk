# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Added platform feature permissions
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
   frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
   frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
   frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
   frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
   frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
   frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
   frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
   frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
   frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
   frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
   frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
   frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
   frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
   frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
   packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
   frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
   frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
#   frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Copy ALSA configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/libasound/src/conf/alsa.conf:system/usr/share/alsa/alsa.conf \
   $(LOCAL_PATH)/libasound/src/conf/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
   $(LOCAL_PATH)/libasound/src/conf/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

# Copy input device configurations and  keyboard layouts
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/idc/synaptics_rmi4_i2c.idc:system/usr/idc/synaptics_rmi4_i2c.idc \
   $(LOCAL_PATH)/idc/bu21013_ts.idc:system/usr/idc/bu21013_ts.idc \
   $(LOCAL_PATH)/idc/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
   $(LOCAL_PATH)/idc/tp_ft5306.idc:system/usr/idc/tp_ft5306.idc \
   $(LOCAL_PATH)/keylayout/STMPE-keypad.kl:system/usr/keylayout/STMPE-keypad.kl \
   $(LOCAL_PATH)/keylayout/tc3589x-keypad.kl:system/usr/keylayout/tc3589x-keypad.kl \
   $(LOCAL_PATH)/keylayout/ux500-ske-keypad.kl:system/usr/keylayout/ux500-ske-keypad.kl \
   $(LOCAL_PATH)/keylayout/ux500-ske-keypad-qwertz.kl:system/usr/keylayout/ux500-ske-keypad-qwertz.kl \
   $(LOCAL_PATH)/keylayout/AB8500_Hs_Button.kl:system/usr/keylayout/AB8500_Hs_Button.kl

# Copy AGPS configuration files for lbs_core module
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/LbsConfig.cfg:system/etc/LbsConfig.cfg \
   $(LOCAL_PATH)/configs/LbsLogConfig.cfg:system/etc/LbsLogConfig.cfg \
   $(LOCAL_PATH)/configs/LbsPgpsConfig.cfg:system/etc/LbsPgpsConfig.cfg \
   $(LOCAL_PATH)/configs/LbsPltConfig.cfg:system/etc/LbsPltConfig.cfg \
   $(LOCAL_PATH)/configs/cacert.txt:system/etc/cacert.txt

# Copy Audio configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/asound.conf:system/etc/asound.conf

# Copy Media configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
   $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \

# Copy Wifi configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
   $(LOCAL_PATH)/configs/hostapd.conf:system/etc/wifi/hostapd.conf \
   $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Copy EGL configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/egl.cfg:system/lib/egl/egl.cfg

# Copy CSPSA configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/cspsa.conf:system/etc/cspsa.conf

# Copy DBus configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/dbus.conf:system/etc/dbus.conf

# Copy OMX configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/omxloaders:system/etc/omxloaders

# Copy the blue-up.sh script to system/bin
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/blue-up.sh:system/bin/blue-up.sh \

# Copy RIL configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/ril_config:system/etc/ril_config

# RIL initialization script
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/ste_modem.sh:system/etc/ste_modem.sh

# USB Device ID initialization script
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/usbid_init.sh:system/bin/usbid_init.sh

# CG2900 initialization script
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/cg2900-channel_init.sh:system/bin/cg2900-channel_init.sh

# ST-Ericsson copy configs script
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/01stesetup:system/etc/init.d/01stesetup

# SELinux script
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/02selinux:system/etc/init.d/02selinux

# Network script
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/10wireless:system/etc/init.d/10wireless

# Custom init / uevent
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
   $(LOCAL_PATH)/rootdir/fstab.st-ericsson:root/fstab.st-ericsson \
   $(LOCAL_PATH)/rootdir/init.st-ericsson.rc:root/init.st-ericsson.rc \
   $(LOCAL_PATH)/rootdir/init.st-ericsson.usb.rc:root/init.st-ericsson.usb.rc \
   $(LOCAL_PATH)/rootdir/ueventd.st-ericsson.rc:root/ueventd.st-ericsson.rc

# Recovery script
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Filesystem management tools
PRODUCT_PACKAGES += \
   make_ext4fs \
   setup_fs \
   e2fsck

# Audio
PRODUCT_PACKAGES += \
   libasound \
   tinyalsa \
   libtinyalsa \
   audio.usb.default

# Network
PRODUCT_PACKAGES += \
   libnetcmdiface \
   libnl_2

# WIFi crda
PRODUCT_PACKAGES += \
   crda \
   regdbdump \
   regulatory.bin \
   85-regulatory.rules

# Hostapd
PRODUCT_PACKAGES += \
   hostapd_cli \
   hostapd

# Lights
PRODUCT_PACKAGES += \
   lights.montblanc

# Memtrack
PRODUCT_PACKAGES += \
   memtrack.montblanc

# Torch
PRODUCT_PACKAGES += \
   Torch

# Misc
PRODUCT_PACKAGES += \
   com.android.future.usb.accessory

# kitkat bootloop fix.
PRODUCT_PROPERTY_OVERRIDES += \
   ro.zygote.disable_gl_preload=1

# Wifi interface
PRODUCT_PROPERTY_OVERRIDES += \
   wifi.interface=wlan0

# Enable AAC 5.1 channel output
PRODUCT_PROPERTY_OVERRIDES += \
   media.aac_51_output_enabled=1

# Enabled Mass Storage Mode
PRODUCT_PROPERTY_OVERRIDES += \
   persist.sys.usb.config=mass_storage,acm,adb \

# Bluetooth
#PRODUCT_PROPERTY_OVERRIDES += \
#   persist.sys.bluetooth.handsfree=hfp_wbs
#   persist.sys.bluetooth.mode=le \

# Enable Debug mode
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

DEVICE_PACKAGE_OVERLAYS += device/snda/u8500/overlay

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product-if-exists, vendor/snda/u8500/u8500-vendor.mk)
