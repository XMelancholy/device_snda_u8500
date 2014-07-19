#
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
#

# inherit from the proprietary version
-include vendor/snda/u8500/BoardConfigVendor.mk

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/snda/u8500/include

# Assert
TARGET_OTA_ASSERT_DEVICE := u8500,s1w_u8500
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/snda/u8500/releasetools/snda_ota_from_target_files
TARGET_RELEASETOOLS_EXTENSIONS := device/snda/u8500/releasetools

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := montblanc
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := montblanc

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel information
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=st-ericsson
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
TARGET_KERNEL_SOURCE := kernel/snda/u8500
TARGET_KERNEL_CONFIG := cm_u8500_defconfig

# Custom boot
BOARD_CUSTOM_BOOTIMG_MK := device/snda/u8500/mkbootimg.mk

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# ST-Ericsson hardware
BOARD_USES_STE_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE -DSTE_SNDA_HARDWARE

# STE healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.montblanc

# Audio
BOARD_USES_ALSA_AUDIO := true

# Kitkat Audio
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR1_AUDIO_BLOB

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BLUEZ := true

# Camera
USE_CAMERA_STUB := true

# ICS Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# Graphics
BOARD_EGL_CFG := device/snda/u8500/configs/egl.cfg
USE_OPENGL_RENDERER := true

# Kitkat libui
BOARD_HAVE_PIXEL_FORMAT_INFO := true

# Kitkat libutils
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Wifi information
WPA_SUPPLICANT_VERSION := VER_0_8_X_TI
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211

# Wifi drivers
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/cw1200_wlan.ko
WIFI_DRIVER_MODULE_NAME := cw1200_wlan
WIFI_DRIVER_LOADER_DELAY := 1000000

# Wifi Mac Fixed from cspsa
WIFI_MAC_ADDR_CSPSA := true

# Use TI Mac80211
USES_TI_MAC80211 := true
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211

# Use p2p
ANDROID_P2P := true
COMMON_GLOBAL_CFLAGS += -DANDROID_P2P

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

# Filesystem information
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 655360000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1170210816
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728

# Vold
BOARD_VOLD_MAX_PARTITIONS := 8

# RIL implementation
BOARD_RIL_CLASS := ../../../device/snda/u8500/telephony-common/

# Init
#TARGET_NO_INITLOGO := true
TARGET_PROVIDES_INIT_RC := true

# Recovery information
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true

# CWM Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/snda/u8500/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_10x18.h\"
TARGET_RECOVERY_FSTAB := device/snda/u8500/rootdir/fstab.st-ericsson

# TWRP Recovery
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc0/musb-ux500.0/musb-hdrc/gadget/lun%d/file"

# Bootanimation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960
