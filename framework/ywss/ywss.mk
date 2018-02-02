NAME := ywss

$(NAME)_TYPE := framework
GLOBAL_INCLUDES += .
GLOBAL_DEFINES += CONFIG_YWSS



ifeq ($(HOST_ARCH), linux)
LIB_PATH := linux
else ifeq ($(HOST_ARCH), ARM968E-S)
LIB_PATH := arm968es
else ifeq ($(HOST_MCU_FAMILY), esp32)
LIB_PATH := xtensa
else ifeq ($(HOST_MCU_FAMILY), esp8266)
LIB_PATH := lx106
else
$(error "not find correct platform!")
endif

$(NAME)_PREBUILT_LIBRARY := lib/$(LIB_PATH)/libywss.a
