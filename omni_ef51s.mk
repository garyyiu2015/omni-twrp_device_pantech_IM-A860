#
# Copyright 2016 The Android Open Source Project
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

# Inherit from our custom product configuration
$(call inherit-product, device/pantech/ef51s/full_ef51s.mk)

$(call inherit-product, vendor/omni/config/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

TARGET_BOOTANIMATION_NAME := 720

# Release name
PRODUCT_RELEASE_NAME := ef51s

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef51s
PRODUCT_NAME := omni_ef51s
PRODUCT_BRAND := VEGA
PRODUCT_MODEL := IM-A860
PRODUCT_MANUFACTURER := PANTECH

