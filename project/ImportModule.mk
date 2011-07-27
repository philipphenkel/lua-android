LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := lua-5.1.4

ifeq ($(NDK_DEBUG),1)
    DEBUG_POSTFIX := _d
else
    DEBUG_POSTFIX :=
endif

LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/liblua-5.1.4$(DEBUG_POSTFIX).a

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(PREBUILT_STATIC_LIBRARY)

