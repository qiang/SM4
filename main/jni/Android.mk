# Copyright (C) 2009 The Android Open Source Project
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
#
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := sm4
LOCAL_SRC_FILES         := $(LOCAL_PATH)/../../libsm4/libs/$(TARGET_ARCH_ABI)/libsm4.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../libsm4/jni
include $(PREBUILT_SHARED_LIBRARY)



## 编译test文件

include $(CLEAR_VARS)
LOCAL_MODULE    := main
LOCAL_SRC_FILES := sm4test.c
LOCAL_SHARED_LIBRARIES  := sm4

LOCAL_CONLYFLAGS        := -std=c11
LOCAL_CFLAGS            := -Wall -Wextra -Werror -fPIE
LOCAL_LDLIBS            += -fPIE -pie

include $(BUILD_EXECUTABLE)

