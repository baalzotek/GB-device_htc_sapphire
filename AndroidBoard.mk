# Copyright (C) 2007 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

file := $(TARGET_OUT_KEYLAYOUT)/sapphire-keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/sapphire-keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.sapphire.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.sapphire.rc | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.trout.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.trout.rc | $(ACP)
    $(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := debug optional
LOCAL_SRC_FILES := sapphire-keypad.kcm
include $(BUILD_KEY_CHAR_MAP)

include device/htc/dream-sapphire/AndroidBoardCommon.mk

-include vendor/htc/sapphire/AndroidBoardVendor.mk
