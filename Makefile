ARCHS = armv7 arm64


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = k10MiniBar
k10MiniBar_FILES = Tweak.xm

k10MiniBar_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
