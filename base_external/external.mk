include $(sort $(wildcard $(BR2_EXTERNAL_PROJECT_BASE_PATH)/package/*/*.mk))
define AESD_LINUX_COPY_DTS
	cp $(BR2_EXTERNAL_PROJECT_BASE_PATH)/board/am335x-BBB-aesd.dts \
		$(LINUX_DIR)/arch/arm/boot/dts/ti/omap/
endef
LINUX_PRE_BUILD_HOOKS += AESD_LINUX_COPY_DTS
