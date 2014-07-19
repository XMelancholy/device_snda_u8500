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

# Inherit device configuration
$(call inherit-product, device/snda/u8500/full_u8500.mk)

# Inherit CM common GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u8500
PRODUCT_NAME := cm_u8500

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=s1w_u8500
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="s1w_u8500-user 4.4.4 NS4.4 13436 release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Bambookphone/s1w_u8500/u8500:4.4.4/NS4.4/13436:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

