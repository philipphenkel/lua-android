ifeq ($(NDK_DEBUG),1)
    DEBUG_POSTFIX := _d
else
    DEBUG_POSTFIX :=
endif

APP_MODULES = lua-5.1.4$(DEBUG_POSTFIX)
