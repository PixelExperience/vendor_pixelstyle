LOCAL_PATH := $(call my-dir)

# Arcore apk and libs
include $(CLEAR_VARS)
LOCAL_MODULE := arcore
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := app/arcore/arcore.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := libarcore_c libdevice_profile_loader
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libarcore_c
LOCAL_MODULE_OWNER := google
LOCAL_SRC_FILES_64 := lib64/libarcore_c.so
LOCAL_SRC_FILES_32 := lib/libarcore_c.so
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdevice_profile_loader
LOCAL_MODULE_OWNER := google
LOCAL_SRC_FILES_64 := lib64/libdevice_profile_loader.so
LOCAL_SRC_FILES_32 := lib/libdevice_profile_loader.so
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
