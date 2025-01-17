# Settings for compiling waipio camera architecture

# Localized KCONFIG settings
# Camera: Remove for user build
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
CONFIG_CCI_DEBUG_INTF := y
ccflags-y += -DCONFIG_CCI_DEBUG_INTF=1

CONFIG_CAM_REQ_MGR_EVENT_MAX := y
ccflags-y += -DCONFIG_CAM_REQ_MGR_EVENT_MAX=1
endif
CONFIG_CAM_SENSOR_PROBE_DEBUG := y

# Flags to pass into C preprocessor
ccflags-y += -DCONFIG_CAM_SENSOR_PROBE_DEBUG=1
