ARCHS = arm64
TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = Blocket


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoUpdateRequiredBlocket

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
