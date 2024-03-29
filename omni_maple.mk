#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := maple

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Keylayout
PRODUCT_COPY_FILES += \
    device/sony/maple/gpio-keys.kl:recovery/root/system/usr/keylayout/gpio-keys.kl

PRODUCT_PROPERTY_OVERRIDES := \
    ro.usb.pid_suffix=1F1 \
    sys.usb.controller=a800000.dwc3 \
    sys.usb.rndis.func.name=gsi \
    sys.usb.rmnet.func.name=gsi


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maple
PRODUCT_NAME := omni_maple
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia XZ Premium
PRODUCT_MANUFACTURER := Sony
