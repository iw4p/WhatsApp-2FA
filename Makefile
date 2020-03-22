INSTALL_TARGET_PROCESSES = WhatsApp

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WhatsApp2FA

WhatsApp2FA_FILES = Tweak.xm
WhatsApp2FA_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
