#
# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## Specify phone tech before including full_phone
$(call inherit-product, vendor/supernexus/configs/gsm.mk)
DEVICE_PACKAGE_OVERLAYS += device/htc/pico/overlay

# Inherit some common supernexus stuff.
$(call inherit-product, vendor/supernexus/configs/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk

# Pico uses Medium-density artwork where available
PRODUCT_LOCALES += mdpi

PRODUCT_NAME := full_pico
PRODUCT_DEVICE := pico
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := HTC Explorer A310e
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pico BUILD_ID=JZO54K BUILD_FINGERPRINT=htc_asia_india/htc_pico/pico:2.3.5/GRJ90/171430.1:user/release-keys PRIVATE_BUILD_DESC="1.12.720.1 CL171430 release-keys"

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/htc/pico/pico.mk)
