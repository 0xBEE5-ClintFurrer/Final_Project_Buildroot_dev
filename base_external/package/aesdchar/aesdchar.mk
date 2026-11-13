# define where to pull the source files
AESDCHAR_VERSION = 6c74ab768d8577bdd588f2f533f04469f0cc657e
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/final-project-0xBEE5-ClintFurrer.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = NO

# Group BOTH driver directories together so Buildroot compiles them at once
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/bin/aesdchar_load
	$(INSTALL) -D -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/bin/aesdchar_unload

endef

$(eval $(kernel-module))
$(eval $(generic-package))
