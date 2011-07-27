LOCAL_PATH := $(call my-dir)/lua-5.1.4/src

include $(CLEAR_VARS)

ifeq ($(NDK_DEBUG),1)
    DEBUG_POSTFIX := _d
else
    DEBUG_POSTFIX :=
endif

LOCAL_MODULE := lua-5.1.4$(DEBUG_POSTFIX)

LOCAL_SRC_FILES := lapi.c \
				   lauxlib.c \
				   lbaselib.c \
				   lcode.c \
				   ldblib.c \
				   ldebug.c \
				   ldo.c  \
				   ldump.c \
				   lfunc.c \
				   lgc.c \
				   linit.c \
				   liolib.c \
				   llex.c \
				   lmathlib.c \
				   lmem.c \
				   loadlib.c \
				   lobject.c \
				   lopcodes.c \
				   loslib.c \
				   lparser.c \
				   lstate.c \
				   lstring.c \
				   lstrlib.c \
				   ltable.c \
				   ltablib.c \
				   ltm.c \
				   lundump.c \
				   lvm.c \
				   lzio.c \
				   print.c \

LOCAL_LDLIBS := -lm

include $(BUILD_STATIC_LIBRARY)
